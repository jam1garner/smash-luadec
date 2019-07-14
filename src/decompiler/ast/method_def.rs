use super::*;

#[derive(Debug)]
pub struct MethodDef {
    pub receiver: ExprNode,
    pub method: String,
    pub body: ExprNode,
}

impl MethodDef {
    pub fn new(receiver: ExprNode, method: String, body: ExprNode) -> Box<MethodDef> {
        Box::new(MethodDef {
            receiver,
            method,
            body,
        })
    }
}

impl Display for MethodDef {
    fn fmt(&self, f: &mut Formatter) -> Result<(), fmt::Error> {
        write!(f, "function {}:{} {}\nend", 
            self.receiver,
            self.method,
            self.body
        )
    }
}
