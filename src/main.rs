#![allow(unused_variables)]
#![allow(dead_code)]
mod bytecode;
use bytecode::*;

fn main() {
    /*println!("{:?}", Instruction {
        op: Op::,
        a: Operand::Reg(1),
        b: Operand::U18(0),
        c: Operand::None
    }.as_bytes().unwrap());*/
    let hex_bytes = b"\x06\x00\x40\x00\x07\x40\x40\x00\x24\x80\x80\x00\x22\x00\x00\x00";
    for i in 0..hex_bytes.len() / 4 {
        println!("{:?} | {:?}", &hex_bytes[i*4..(i+1)*4], take_instr(&hex_bytes[i*4..(i+1)*4]).unwrap());
    }
}
