#![allow(unused_variables)]
#![allow(dead_code)]
pub mod bytecode;
pub mod lc;
pub mod decompiler;

fn main() {
    //let file = include_bytes!("/home/jam/re/ultimate/lua/main_menu_layer_melee.lc");
    let file = include_bytes!("/home/jam/re/ultimate/lua/option_button_controller.lc");
    let a = lc::parser::take_lc_file(file).unwrap().1.main.disassemble();//decompile();
    println!("[func root]\n{}", a);
}
