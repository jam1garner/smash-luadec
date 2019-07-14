use super::*;
use itertools::Itertools;

#[derive(Debug)]
pub struct FuncCall {
    pub func: ExprNode,
    pub args: Vec<ExprNode>,
    pub adj: bool,
}

impl FuncCall {
    pub fn new(func: ExprNode, args: Vec<ExprNode>) -> FuncCall {
        FuncCall {
            func,
            args,
            adj: false,
        }
    }
}

impl Display for FuncCall {
    fn fmt(&self, f: &mut Formatter) -> Result<(), fmt::Error> {
        if self.adj {
            panic!("self.adj");
        }
        write!(f, "{}({})",
            self.func,
            self.args.iter().join(", ")
        )
    }
}
