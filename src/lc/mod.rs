pub mod parser;
pub mod writer;
use super::bytecode::*;

pub struct LcFile {
    main: LcFunc
}

pub struct LcFunc {
    src_name: Option<String>,
    code: Vec<Instruction>,
    constants: Vec<LuaValue>,
    upvals: Vec<UpVal>,
    funcs: Vec<LcFunc>
}

pub struct UpVal {
    on_stack: bool,
    id: u8
}

pub enum LuaValue {
    Nil,
    Bool(bool),
    Float(f32),
    Str(String),
    U64(u64),
}
