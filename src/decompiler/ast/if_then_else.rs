use super::*;

#[derive(Debug)]
pub struct IfThenElse {
    pub condition: ExprNode,
    pub then: Vec<StmtNode>,
    pub els: Vec<StmtNode>,
}

impl IfThenElse {
    pub fn new(condition: ExprNode, then: Vec<StmtNode>, els: Vec<StmtNode>) -> IfThenElse {
        IfThenElse {
            condition,
            then,
            els,
        }
    }

    pub fn set_els(&mut self, els: Vec<StmtNode>) {
        self.els = els;
    }
}

impl Display for IfThenElse {
    fn fmt(&self, f: &mut Formatter) -> Result<(), fmt::Error> {
        write!(f, "if {} then\n", self.condition)?;
        for i in &self.then {
            write!(f, "{}\n", i)?;
        }
        if self.els.len() != 0 {
            if self.els.len() == 1 {
                if let Stmt::If(_) = &self.els[0].inner {
                    write!(f, "{}", self.els[0])?;
                }
                return write!(f, "end");
            }
            write!(f, "\n")?;
            for i in &self.els {
                write!(f, "{}\n", i)?;
            }
        }
        write!(f, "end")
    }
}
