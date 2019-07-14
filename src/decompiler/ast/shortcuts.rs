use super::*;

pub fn lua_assign<S: AsRef<str>>(left: S, right: Expr) -> StmtNode {
     Node::new(Stmt::Assign(vec![
        Node::new(Expr::Ident(String::from(left.as_ref())), (0,0))
     ], vec![
        Node::new(right, (0,0))
     ]), (0,0))
}

pub fn lua_local_assign(left: String, right: Expr) -> StmtNode {
     Node::new(Stmt::LocalAssign(vec![
        left
     ], vec![
        Node::new(right, (0,0))
     ]), (0,0))
}

pub fn lua_operation(left: String, right: Expr) -> StmtNode {
     Node::new(Stmt::LocalAssign(vec![
        left
     ], vec![
        Node::new(right, (0,0))
     ]), (0,0))
}
