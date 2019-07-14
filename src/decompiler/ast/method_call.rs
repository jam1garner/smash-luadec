use super::*;
use itertools::Itertools;

#[derive(Debug)]
pub struct MethodCall {
    pub receiver: ExprNode,
    pub method: String,
    pub args: Vec<ExprNode>,
}

impl MethodCall {
    pub fn new(receiver: ExprNode, method: String, args: Vec<ExprNode>) -> MethodCall {
        MethodCall {
            receiver,
            method,
            args,
        }
    }
}

impl Display for MethodCall {
    fn fmt(&self, f: &mut Formatter) -> Result<(), fmt::Error> {
        write!(f, "{}.{}({})",
            self.receiver,
            self.method,
            self.args.iter().join(", ")
        )
    }
}
