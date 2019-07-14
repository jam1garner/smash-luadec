use super::*;
use itertools::Itertools;

#[derive(Debug)]
pub enum Stmt {
    /// Assign(Lhs, Rhs)
    Assign(Vec<ExprNode>, Vec<ExprNode>),

    /// LocalAssign(Names, Exprs)
    LocalAssign(Vec<String>, Vec<ExprNode>),
    FuncCall(ExprNode),
    MethodCall(ExprNode),
    DoBlock(Vec<StmtNode>),

    /// While(Condition, Stmts)
    While(ExprNode, Vec<StmtNode>),

    /// Repeat(Condition, Stmts)
    Repeat(ExprNode, Vec<StmtNode>),
    If(IfThenElse),
    NumberFor(Box<NumberFor>),
    GenericFor(Box<GenericFor>),
    FuncDef(Box<FuncDef>),
    MethodDef(Box<MethodDef>),
    Return(Vec<ExprNode>),
    Break,
}

impl Display for Stmt {
    fn fmt(&self, f: &mut Formatter) -> Result<(), fmt::Error> {
        match &self {
            Stmt::Assign(left, right) => {
                write!(f, "{} = {}",
                    left.iter().join(", "),
                    right.iter().join(", ")
                )
            },

            Stmt::LocalAssign(names, exprs) => {
                write!(f, "local {} = {}",
                    names.iter().join(", "),
                    exprs.iter().join(", ")
                )
            },
            Stmt::FuncCall(expr) | Stmt::MethodCall(expr) => {
                write!(f, "{}", expr)
            },
            Stmt::DoBlock(stmts) => {
                write!(f, "do\n{}\nend",
                    stmts.iter().join("\n")
                )
            },

            Stmt::While(cond, stmts) => {
                write!(f, "while {} do\n{}\nend",
                    cond,
                    stmts.iter().join("\n")
                )
            },

            Stmt::Repeat(cond, stmts) => {
                write!(f, "repeat\n{}\nuntil {}",
                    stmts.iter().join("\n"),
                    cond
                )
            },
            Stmt::If(if_stmt) => {
                write!(f, "{}", if_stmt)
            },
            Stmt::NumberFor(num_for) => {
                write!(f, "{}", num_for)
            },
            Stmt::GenericFor(gen_for) => {
                write!(f, "{}", gen_for)
            },
            Stmt::FuncDef(func_def) => {
                write!(f, "{}", func_def)
            },
            Stmt::MethodDef(method_def) => {
                write!(f, "{}", method_def)
            },
            Stmt::Return(rets) => {
                write!(f, "return {}",
                    rets.iter().join(", ")
                )
            },
            Stmt::Break => {
                write!(f, "break")
            },
        }
    }
}

pub type StmtNode = Node<Stmt>;
pub type ExprNode = Node<Expr>;
