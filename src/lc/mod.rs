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

impl LcFunc {
    pub fn disassemble(&self) -> String {
        let mut output = String::new();
        if let Some(src_name) = &self.src_name {
            output.push_str(".source \"");
            output.push_str(&src_name);
            output.push_str("\"\n");
        }
        for (i, instr) in self.code.iter().enumerate() {
            output.push_str(&format!("[{}] ", i));
            output.push_str(&format!("{}\n", instr.to_string()));
        }
        output
    }
}
