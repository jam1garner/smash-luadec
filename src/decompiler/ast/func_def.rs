use super::*;

#[derive(Debug)]
pub struct FuncDef {
    pub name: Vec<ExprNode>,
    pub body: Vec<ExprNode>,
}

impl FuncDef {
    pub fn new(name: ExprNode, body: ExprNode) -> Box<FuncDef> {
        // TODO: refactor this
        Box::new(FuncDef {
            name: vec![name],
            body: vec![body],
        })
    }
}

impl Display for FuncDef {
    fn fmt(&self, f: &mut Formatter) -> Result<(), fmt::Error> {
        if self.body.len() != 1 || self.name.len() != 1 {
            panic!("Incorrect number of name/body objects in func def");
        }
        write!(f, "function {}{}\nend", self.name[0], self.body[0])
    }
}
