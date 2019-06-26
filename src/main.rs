#![allow(unused_variables)]
#![allow(dead_code)]
mod bytecode;
mod lc;

fn main() {
    let file = include_bytes!("/home/jam/Downloads/game_modded.lc");
    println!("{:#?}", lc::parser::take_lc_file(file));
}
