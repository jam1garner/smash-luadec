use super::*;
use itertools::Itertools;

#[derive(Debug)]
pub struct NumberFor {
    pub name: String,
    pub init: ExprNode,
    pub limit: ExprNode,
    pub step: ExprNode,
    pub stmts: Vec<StmtNode>,
}

impl NumberFor {
    pub fn new(name: String, init: ExprNode, limit: ExprNode, step: ExprNode, stmts: Vec<StmtNode>) -> Box<NumberFor> {
        Box::new(NumberFor {
            name,
            init,
            limit,
            step,
            stmts,
        })
    }
}

impl Display for NumberFor {
    fn fmt(&self, f: &mut Formatter) -> Result<(), fmt::Error> {
        write!(f, "for {} = {},{},{} do\n",
           self.name,
           self.init,
           self.limit,
           self.step
        )?;
        for i in &self.stmts {
            write!(f, "{}\n", i)?;
        }
        write!(f, "end")
    }
}


#[derive(Debug)]
pub struct GenericFor {
    pub names: Vec<String>,
    pub exprs: Vec<ExprNode>,
    pub stmts: Vec<StmtNode>,
}

impl GenericFor {
    pub fn new(names: Vec<String>, exprs: Vec<ExprNode>, stmts: Vec<StmtNode>) -> Box<GenericFor> {
        Box::new(GenericFor {
            names,
            exprs,
            stmts,
        })
    }
}

impl Display for GenericFor {
    fn fmt(&self, f: &mut Formatter) -> Result<(), fmt::Error> {
        write!(f, "for {} in {} do\n",
            self.names.iter().join(","),
            self.exprs.iter().join(",")
        )?;
        write!(f, "end")
    }
}
