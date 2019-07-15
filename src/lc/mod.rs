pub mod parser;
pub mod writer;
use super::bytecode::*;

#[derive(Debug)]
pub struct LcFile {
    pub main: LcFunc
}

#[derive(Debug)]
pub struct LcFunc {
    pub src_name: Option<String>,
    pub code: Vec<Instruction>,
    pub constants: Vec<LuaValue>,
    pub upvals: Vec<UpVal>,
    pub funcs: Vec<LcFunc>
}

#[derive(Debug)]
pub struct UpVal {
    pub on_stack: bool,
    pub id: u8
}

#[derive(Debug)]
pub enum LuaValue {
    Nil,
    Bool(bool),
    Float(f32),
    Str(String),
    U64(u64),
}

impl std::fmt::Display for LuaValue {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> Result<(), std::fmt::Error> {
        match self {
            LuaValue::Nil => write!(f, "nil"),
            LuaValue::Bool(a) => write!(f, "[bool={}]", a),
            LuaValue::Float(a) => write!(f, "[float={}]", a),
            LuaValue::Str(a) => write!(f, "[str=\"{}\"]", a),
            LuaValue::U64(a) => write!(f, "[u64=0x{:X}]", a),
        }
    }
}


impl LcFunc {
    pub fn disassemble(&self) -> String {
        let mut output = String::new();
        if let Some(src_name) = &self.src_name {
            output.push_str(".source \"");
            output.push_str(&src_name);
            output.push_str("\"\n");
        }
        for (i, upval) in self.upvals.iter().enumerate() {
            output.push_str(&format!("u{} = {}{}\n", i, if upval.on_stack {
                "r"
            } else {
                "u"
            }, upval.id));
        }
        for (i, instr) in self.code.iter().enumerate() {
            output.push_str(&format!("[{}] ", i));
            output.push_str(&format!("{}\n", instr.to_string_with_consts(self)));
        }
        for (i, cnst) in self.constants.iter().enumerate() {
            output.push_str(&format!("k{} = {}\n", i, cnst));
        }
        for (i, func) in self.funcs.iter().enumerate() {
            output.push_str(&format!("\n[func CLOSURE_{}]\n", i));
            output.push_str(&func.disassemble());
        }
        output
    }
}
