#![allow(unused_variables)]
#![allow(dead_code)]
mod bytecode;
use bytecode::*;

fn main() {
    println!("{:?}", Instruction {
        op: Op::CLOSURE,
        a: Operand::Reg(1),
        b: Operand::U18(0),
        c: Operand::None
    }.as_bytes().unwrap());
    println!("{:?}", take_instr(b"\x4B\x00\x00\x00"));
}
