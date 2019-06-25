#[derive(Debug)]
pub struct Instruction {
    pub op: Op,
    pub a: Operand,
    pub b: Operand,
    pub c: Operand
}

impl Instruction {
    pub fn as_bytes(&self) -> Option<[u8; 4]> {
        let mut bytes = [0; 4];
        bytes[0] = (self.op as u8) << 2;
        match self.op.get_mode() {
            OpMode::IABC => {
                let a = self.a.as_u8()?;
                bytes[0] |= a >> 6;
                bytes[1] |= a << 2;
                let b = self.b.as_u8()?;
                bytes[1] |= self.b.get_const_bit()? << 1;
                bytes[1] |= b >> 7;
                bytes[2] |= b << 1;
                let c = self.c.as_u8()?;
                bytes[2] |= self.c.get_const_bit()?;
                bytes[3] = c;
            }
            OpMode::IABX => {
                let a = self.a.as_u8()?;
                bytes[0] |= a >> 6;
                bytes[1] |= a << 2;
                let b = self.b.get_u18()?;
                bytes[1] |= (b >> 16) as u8;
                bytes[2] |= (b >> 8) as u8;
                bytes[3] |= b as u8;
            }
            _ => {
                return None;
            }
        }
        Some(bytes)
    }
}

#[derive(Debug)]
pub enum OpMode {
    IABC, // 3 args (8, 9, and 9 bits respectively)
    IABX, // 2 args (8 and 18 bits respectively)
    IASBX, // 2 args (8 and 18 bits respectively, second is signed)
    IAX // 1 arg (26 bits)
}

#[derive(Debug)]
pub enum Operand {
    None,
    Reg(u8),
    Const(u8),
    U18(u32),
    S18(i32),
    U26(u32)
}

impl Operand {
    pub fn get_reg(&self) -> Option<u8> {
        if let Operand::Reg(a) = self {
            Some(*a)
        } else {
            None
        }
    }

    pub fn get_u18(&self) -> Option<u32> {
        if let Operand::U18(a) = self {
            Some(*a)
        } else {
            None
        }
    }
    
    pub fn as_u8(&self) -> Option<u8> {
        match self {
            Operand::Reg(a) => Some(*a),
            Operand::Const(a) => Some(*a),
            _ => None
        }
    }

    pub fn get_const_bit(&self) -> Option<u8> {
        match self {
            Operand::Reg(a) => Some(0),
            Operand::Const(a) => Some(1),
            _ => None
        }
    }
}

#[repr(u8)]
#[derive(Copy, Clone, Debug)]
pub enum Op {
  MOVE,
  LOADK,
  LOADKX,
  LOADBOOL,
  LOADNIL,
  GETUPVAL,
  GETTABUP,
  GETTABLE,
  SETTABUP,
  SETUPVAL,
  SETTABLE,
  NEWTABLE,
  SELF,
  ADD,
  SUB,
  MUL,
  MOD,
  POW,
  DIV,
  IDIV,
  BAND,
  BOR,
  BXOR,
  SHL,
  SHR,
  UNM,
  BNOT,
  NOT,
  LEN,
  CONCAT,
  JMP,
  EQ,
  LT,
  LE,
  TEST,
  TESTSET,
  CALL,
  TAILCALL,
  RETURN,
  FORLOOP,
  FORPREP,
  TFORCALL,
  TFORLOOP,
  SETLIST,
  CLOSURE,
  VARARG,
  EXTRAARG
}

impl Op {
    pub fn from_u8(val: u8) -> Option<Self> {
        if (0..47).contains(&val) {
            unsafe {
                Some(std::mem::transmute(val))
            }
        } else {
            None
        }
    }

    pub fn get_mode(&self) -> OpMode {
        match self {
            Op::MOVE => OpMode::IABC,
            Op::LOADK => OpMode::IABX,
            Op::LOADKX => OpMode::IABX,
            Op::LOADBOOL => OpMode::IABC,
            Op::LOADNIL => OpMode::IABC,
            Op::GETUPVAL => OpMode::IABC,
            Op::GETTABUP => OpMode::IABC,
            Op::GETTABLE => OpMode::IABC,
            Op::SETTABUP => OpMode::IABC,
            Op::SETUPVAL => OpMode::IABC,
            Op::SETTABLE => OpMode::IABC,
            Op::NEWTABLE => OpMode::IABC,
            Op::SELF => OpMode::IABC,
            Op::ADD => OpMode::IABC,
            Op::SUB => OpMode::IABC,
            Op::MUL => OpMode::IABC,
            Op::MOD => OpMode::IABC,
            Op::POW => OpMode::IABC,
            Op::DIV => OpMode::IABC,
            Op::IDIV => OpMode::IABC,
            Op::BAND => OpMode::IABC,
            Op::BOR => OpMode::IABC,
            Op::BXOR => OpMode::IABC,
            Op::SHL => OpMode::IABC,
            Op::SHR => OpMode::IABC,
            Op::UNM => OpMode::IABC,
            Op::BNOT => OpMode::IABC,
            Op::NOT => OpMode::IABC,
            Op::LEN => OpMode::IABC,
            Op::CONCAT => OpMode::IABC,
            Op::JMP => OpMode::IASBX,
            Op::EQ => OpMode::IABC,
            Op::LT => OpMode::IABC,
            Op::LE => OpMode::IABC,
            Op::TEST => OpMode::IABC,
            Op::TESTSET => OpMode::IABC,
            Op::CALL => OpMode::IABC,
            Op::TAILCALL => OpMode::IABC,
            Op::RETURN => OpMode::IABC,
            Op::FORLOOP => OpMode::IASBX,
            Op::FORPREP => OpMode::IASBX,
            Op::TFORCALL => OpMode::IABC,
            Op::TFORLOOP => OpMode::IASBX,
            Op::SETLIST => OpMode::IABC,
            Op::CLOSURE => OpMode::IABX,
            Op::VARARG => OpMode::IABC,
            Op::EXTRAARG => OpMode::IAX
        }
    }
}

pub fn bytes_to_u32(bytes: &[u8]) -> u32 {
    unsafe {
        *(bytes.as_ptr() as *const u32)
    }
}

pub fn take_instr(bytes: &[u8]) -> Option<Instruction> {
    let instr = bytes_to_u32(bytes);
    let op = Op::from_u8(instr as u8 & 0x3f)?;
    let mut a = Operand::None;
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
            let b_val = ((instr >> 14) & 0x1ffff) + (instr & 0x80000000);
            b = Operand::S18(b_val as i32);
        }
        OpMode::IAX => {
            a = Operand::U26(instr >> 6);
        }
    }
    Some(Instruction { op, a, b, c })
}
