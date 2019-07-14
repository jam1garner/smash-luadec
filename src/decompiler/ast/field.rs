use super::*;

#[derive(Debug)]
pub struct Field {
    pub key: Option<ExprNode>,
    pub val: ExprNode,
}

impl Field {
    pub fn new(key: Option<ExprNode>, val: ExprNode) -> Field { Field { key, val } }
}

impl Display for Field {
    fn fmt(&self, f: &mut Formatter) -> Result<(), fmt::Error> {
        if let Some(key) = &self.key {
            write!(f, "{} : {}", key, self.val)
        } else {
            write!(f, "{}", self.val)
        }
    }
}
