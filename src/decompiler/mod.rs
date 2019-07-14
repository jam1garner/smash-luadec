use crate::lc::{LcFile, LcFunc};

pub mod ast;
use ast::*;

impl LcFunc {
    pub fn decompile(&self) -> Vec<StmtNode> {
        vec![]
    }
}

impl LcFile {
    pub fn decompile(&self) -> Vec<StmtNode> {
        self.main.decompile()
    }
}
