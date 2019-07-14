use super::*;

#[derive(Debug, Copy, Clone, PartialEq, Eq)]
pub enum UnaryOpr {
    Minus,
    Not,
    Length,
    NoUnary,
}

impl Display for UnaryOpr {
    fn fmt(&self, f: &mut Formatter) -> Result<(), fmt::Error> {
        write!(f, "{}", match self {
            UnaryOpr::Minus => "-",
            UnaryOpr::Not => "!",
            UnaryOpr::Length => "#",
            UnaryOpr::NoUnary => Err(fmt::Error)?,
        })
    }
}
