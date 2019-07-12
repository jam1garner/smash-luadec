use super::*;
use nom::{
    IResult,
    Err,
    error::{ParseError, ErrorKind},
    multi::{length_data, count},
    bytes::complete::{tag, take},
    number::complete::{le_u8, le_u32, le_f32, le_u64},
    sequence::tuple,
    branch::alt,
};

pub fn take_instr(input: &[u8]) -> IResult<&[u8], Instruction> {
    let (input, instr) = le_u32(input)?;
    let op = Op::from_u8(instr as u8 & 0x3f).unwrap();
    let a;
    let mut b = Operand::None;
    let mut c = Operand::None;
    let mode = op.get_mode();
    match mode {
        OpMode::IABC => {
            a = Operand::Reg((instr >> 6) as u8);
            let c_val = (instr >> 14) as u8;
            c = if instr & 0x400000 == 0 {
                Operand::Reg(c_val)
            } else {
                Operand::Const(c_val)
            };
            let b_val = (instr >> 23) as u8;
            b = if instr & 0x80000000 == 0 {
                Operand::Reg(b_val)
            } else {
                Operand::Const(b_val)
            };
        }
        OpMode::IABX => {
            a = Operand::Reg((instr >> 6) as u8);
            b = Operand::U18(instr >> 14);
        }
        OpMode::IASBX => {
            a = Operand::Reg((instr >> 6) as u8);
            // Extend sign bit 18 bit to 32 bit
            let b_val = ((instr >> 14) as i32) - 0x1ffff;
            b = Operand::S18(b_val);
        }
        OpMode::IAX => {
            a = Operand::U26(instr >> 6);
        }
    }
    Ok((input, Instruction { op, a, b, c }))
}

fn take_upval(input: &[u8]) -> IResult<&[u8], UpVal> {
    let (input, (on_stack, id)) = tuple((le_u8, le_u8))(input)?;
    Ok((input, UpVal {
        on_stack: on_stack != 0,
        id
    }))
}

fn count_values<I, O1, O2, E, F, G>(count_parse: F, parser: G) -> impl Fn(I) -> IResult<I, Vec<O2>, E> 
where 
    I: Clone + PartialEq,
    E: nom::error::ParseError<I>,
    O1: std::convert::TryInto<usize>,
    F: Fn(I) -> IResult<I, O1, E>,
    G: Fn(I) -> IResult<I, O2, E>,
{
    move |input: I| {
        let (input, count_val) = count_parse(input)?;
        if let Ok(count_val) = count_val.try_into() {
            Ok(count(|i| parser(i), count_val)(input)?)
        } else {
            Err(Err::Error(ParseError::from_error_kind(input, ErrorKind::TooLarge)))
        }
    }
}

fn take_local_var_debug_info(input: &[u8]) -> IResult<&[u8], ()> {
    let (input, _) = tuple((count_values(le_u8, le_u8), take(8u32)))(input)?;
    Ok((input, ()))
}

pub fn take_lc_func(input: &[u8]) -> IResult<&[u8], LcFunc> {
    let (input, name_bytes) = length_data(le_u8)(input)?;
    let (input, (
        first_line,
        end_line,
        param_count,
        is_vararg,
        max_stack_size,
        code,
        constants,
        upvals,
        funcs,
        _,
        _,
        _
    )) = tuple((
        le_u32,
        le_u32,
        le_u8,
        le_u8,
        le_u8,
        count_values(le_u32, take_instr),
        count_values(le_u32, take_lua_value),
        count_values(le_u32, take_upval),
        count_values(le_u32, take_lc_func),
        count_values(le_u32, take(4u32)),
        count_values(le_u32, take_local_var_debug_info),
        count_values(le_u32, count_values(le_u8, le_u8))
    ))(input)?;

    let src_name = if let Ok(s) = std::str::from_utf8(name_bytes) {
        if s.len() > 1 {
            Some(String::from(s))
        } else {
            None
        }
    } else {
        None
    };
    
    Ok((input, LcFunc {
        src_name,
        code,
        constants,
        upvals,
        funcs 
    }))
}

pub fn take_lc_file(input: &[u8]) -> IResult<&[u8], LcFile> {
    let magic = tag(b"\x1bLua");
    let (input, (_, _, main)) = tuple((magic, take(0x19u32), take_lc_func))(input)?;
    Ok((input, LcFile {
        main
    }))
}

// Types of lua values are defined using take_lv_* parsers below
pub fn take_lua_value(input: &[u8]) -> IResult<&[u8], LuaValue> {
    let (input, lv) = alt((
        take_lv_nil,
        take_lv_bool,
        take_lv_float,
        take_lv_str,
        take_lv_u64
    ))(input)?;
    Ok((input, lv))
}

fn take_lv_nil(input: &[u8]) -> IResult<&[u8], LuaValue> {
    let (input, _) = tag(b"\0")(input)?;
    Ok((input, LuaValue::Nil))
}

 fn take_lv_bool(input: &[u8]) -> IResult<&[u8], LuaValue> {
    let (input, (_, b)) = tuple((tag(b"\x01"), le_u8))(input)?;
    Ok((input, LuaValue::Bool(b != 0)))
}

fn take_lv_float(input: &[u8]) -> IResult<&[u8], LuaValue> {
    let (input, (_, float)) = tuple((tag(b"\x03"), le_f32))(input)?;
    Ok((input, LuaValue::Float(float)))
}

fn le_u8_minus_one(input: &[u8]) -> IResult<&[u8], u8> {
    let (input, out) = le_u8(input)?;
    Ok((input, out - 1))
}

fn take_lv_str(input: &[u8]) -> IResult<&[u8], LuaValue> {
    let (input, (_, data)) = tuple((tag(b"\x04"), length_data(le_u8_minus_one)))(input)?;

    Ok((input, LuaValue::Str(
        String::from(std::str::from_utf8(data).unwrap())
    )))
}

fn take_lv_u64(input: &[u8]) -> IResult<&[u8], LuaValue> {
    let (input, (_, val)) = tuple((tag(b"\x13"), le_u64))(input)?;
    Ok((input, LuaValue::U64(val)))
}
