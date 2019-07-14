use super::*;

#[derive(Debug, Copy, Clone, PartialEq, Eq)]
pub enum BinaryOpr {
    Add = 0,
    Sub,
    Mul,
    Div,
    Mod,
    Pow,
    Concat,
    Eq,
    LT,
    LE,
    NE,
    GT,
    GE,
    And,
    Or,
    NoBinary,
}

impl Display for BinaryOpr {
    fn fmt(&self, f: &mut Formatter) -> Result<(), fmt::Error> {
        write!(f, "{}", match self {
            BinaryOpr::Add => "+",
            BinaryOpr::Sub => "-",
            BinaryOpr::Mul => "*",
            BinaryOpr::Div => "/",
            BinaryOpr::Mod => "%",
            BinaryOpr::Pow => "^",
            BinaryOpr::Concat => "..",
            BinaryOpr::Eq => "==",
            BinaryOpr::LT => "<",
            BinaryOpr::LE => "<=",
            BinaryOpr::NE => "!=",
            BinaryOpr::GT => ">",
            BinaryOpr::GE => ">=",
            BinaryOpr::And => "&&",
            BinaryOpr::Or => "||",
            BinaryOpr::NoBinary => Err(fmt::Error)?,
        })
    }
}
