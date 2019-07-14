use super::*;
use itertools::Itertools;

#[derive(Debug)]
pub enum Expr {
    True,
    False,
    Nil,
    Number(f64),
    String(String),
    Dots,
    Ident(String),

    /// AttrGet(Object, Key)
    AttrGet(Box<ExprNode>, Box<ExprNode>),
    Table(Vec<Field>),
    FuncCall(Box<FuncCall>),
    MethodCall(Box<MethodCall>),

    /// BinaryOp(Operator, Lhs, Rhs)
    BinaryOp(BinaryOpr, Box<ExprNode>, Box<ExprNode>),

    /// UnaryOp(Operator, expr)
    UnaryOp(UnaryOpr, Box<ExprNode>),

    /// Function(ParList, Stmts)
    Function(ParList, Vec<StmtNode>),
}

impl Expr {
    pub fn is_vararg(&self) -> bool {
        match self {
            &Expr::Dots => true,
            &Expr::FuncCall(ref call) => !call.adj,
            _ => false,
        }
    }
}

impl Display for Expr {
    fn fmt(&self, f: &mut Formatter) -> Result<(), fmt::Error> {
        write!(f, "{}", match self {
            Expr::True => "true",
            Expr::False => "false",
            Expr::Nil => "nil",
            Expr::Number(num) => {
                return write!(f, "{}", num);
            },
            Expr::String(string) => {
                return write!(f, "\"{}\"", string);
            },
            Expr::Dots => "...",
            Expr::Ident(string) => &string,

            /// AttrGet(Object, Key)
            Expr::AttrGet(obj, key) => {
                return write!(f, "{}.{}", obj, key);
            },
            Expr::Table(fields) => {
                write!(f, "{{\n")?;
                for i in fields {
                    write!(f, "{},\n", i)?;
                }
                return write!(f, "}}");
            },
            Expr::FuncCall(call) => {
                return write!(f, "{}", call);
            },
            Expr::MethodCall(call) => {
                return write!(f, "{}", call);
            },

            /// BinaryOp(Operator, Lhs, Rhs)
            Expr::BinaryOp(op, left, right) => {
                return write!(f, "{} {} {}", left, op, right);
            },

            /// UnaryOp(Operator, expr)
            Expr::UnaryOp(op, expr) => {
                return write!(f, "{}{}", op, expr);
            },

            /// Function(ParList, Stmts)
            Expr::Function(params, stmts) => {
                return write!(f, "({})\n{}\n",
                    params,
                    stmts.iter().join("\n")
                );
            },
            _ => {
                unreachable!("")
            }
        })
    }
}
