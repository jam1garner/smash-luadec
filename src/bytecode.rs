#[derive(Debug)]
pub struct Instruction {
    pub op: Op,
    pub a: Operand,
    pub b: Operand,
    pub c: Operand
}

impl Instruction {
    pub fn as_bytes(&self) -> Option<[u8; 4]> {
        let mut instr: u32 = self.op as u32;
        match self.op.get_mode() {
            OpMode::IABC => {
                let a = self.a.as_u8()? as u32;
                let b = self.b.as_u9()?;
                let c = self.c.as_u9()?;
                instr |= ((((b << 9) | c) << 8) | a) << 6;
            }
            OpMode::IABX | OpMode::IASBX => {
                let a = self.a.as_u8()? as u32;
                let b = self.b.as_u18()?;
                instr |= ((b << 8) | a) << 6;
            }
            OpMode::IAX => {
                let a = self.a.as_u26()?;
                instr |= a << 6;
            }
        }
        let bytes = unsafe {
            std::mem::transmute_copy(&instr)
        };
        Some(bytes)
    }

    pub fn to_string(&self) -> String {
        match self.op.get_mode() {
            OpMode::IABC => {
                format!("{} {} {} {}", self.op, self.a, self.b, self.c)
            }
            OpMode::IABX | OpMode::IASBX => {
                format!("{} {} {}", self.op, self.a, self.b)
            }
            OpMode::IAX => {
                format!("{} {}", self.op, self.a)
            }
        }
    }

    pub fn to_string_with_consts(&self, func: &crate::lc::LcFunc) -> String {
        match self.op.get_mode() {
            OpMode::IABC => {
                format!("{} {} {} {}", self.op, self.a,
                    match self.b {
                        Operand::Reg(rnum) => {
                            match self.op {
                                Op::LOADBOOL => {
                                    format!("{}", rnum != 0)
                                }
                                _ => {
                                    format!("R{}", rnum)
                                }
                            }
                        },
                        Operand::Const(knum) => {
                            format!("{}", func.constants[knum as usize])
                        },
                        _ => {
                            panic!("Invalid B arg");
                        }
                    },
                    match self.c {
                        Operand::Reg(rnum) => {
                            format!("R{}", rnum)
                        },
                        Operand::Const(knum) => {
                            format!("{}", func.constants[knum as usize])
                        },
                        _ => {
                            panic!("Invalid B arg");
                        }
                    })
            }
            OpMode::IABX=> {
                match self.op {
                    Op::LOADK => {
                        if let Operand::U18(knum) = self.b {
                            format!("{} {} {}", self.op, self.a, func.constants[knum as usize])
                        } else {
                            panic!("Invalid LOADK arg b");
                        }
                    }
                    _ => {
                        format!("{} {} {}", self.op, self.a, self.b)
                    }
                }
            }
            OpMode::IASBX => {
                format!("{} {} {}", self.op, self.a, self.b)
            }
            OpMode::IAX => {
                format!("{} {}", self.op, self.a)
            }
        }
    }
}

#[derive(Debug, Clone, Copy)]
pub enum OpMode {
    IABC, // 3 args (8, 9, and 9 bits respectively)
    IABX, // 2 args (8 and 18 bits respectively)
    IASBX, // 2 args (8 and 18 bits respectively, second is signed)
    IAX // 1 arg (26 bits)
}

#[derive(Debug, Clone, Copy)]
pub enum Operand {
    None,
    Reg(u8),
    Const(u8),
    U18(u32),
    S18(i32),
    U26(u32)
}

impl std::fmt::Display for Operand {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> Result<(), std::fmt::Error> {
        match self {
            Operand::Reg(a) => write!(f, "R{}", a),
            Operand::Const(a) => write!(f, "K{}", a),
            Operand::U18(a) => write!(f, "{}", a),
            Operand::S18(a) => write!(f, "{}", a),
            Operand::U26(a) => write!(f, "{}", a),
            Operand::None => { Ok(()) }
        }
    }
}

impl Operand {
    pub fn get_reg(&self) -> Option<u8> {
        if let Operand::Reg(a) = self {
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

    pub fn as_u9(&self) -> Option<u32> {
        match self {
            Operand::Reg(a) => Some(*a as u32),
            Operand::Const(a) => Some(0x100 + *a as u32),
            _ => None
        }
    }

    pub fn as_u18(&self) -> Option<u32> {
        match self {
            Operand::U18(a) => Some(*a),
            Operand::S18(a) => Some(*a as u32),
            _ => None
        }
    }

    pub fn as_u26(&self) -> Option<u32> {
        if let Operand::U26(a) = self {
            Some(*a)
        } else {
            None
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

impl std::fmt::Display for Op {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> Result<(), std::fmt::Error> {
        write!(f, "{}", &format!("{:?}", self))
    }
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
