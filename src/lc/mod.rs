pub mod parser;
pub mod writer;
use super::bytecode::*;

#[derive(Debug)]
pub struct LcFile {
    main: LcFunc
}

#[derive(Debug)]
pub struct LcFunc {
    src_name: Option<String>,
    code: Vec<Instruction>,
    constants: Vec<LuaValue>,
    upvals: Vec<UpVal>,
    funcs: Vec<LcFunc>
}

#[derive(Debug)]
pub struct UpVal {
    on_stack: bool,
    id: u8
}

#[derive(Debug)]
pub enum LuaValue {
    Nil,
    Bool(bool),
    Float(f32),
    Str(String),
    U64(u64),
}
