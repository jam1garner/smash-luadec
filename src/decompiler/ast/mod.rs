/*
 * [License added by jam1garner, file taken and modified from lua-rs]
 * [https://github.com/lonng/lua-rs]
 *
 * MIT License
 *
 * Copyright (c) 2018 Chris Lonng
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */

mod shortcuts;
pub use shortcuts::*;

use std::fmt;
use fmt::{Display, Debug, Error, Formatter};

/// Node represents a node in abstract syntax tree
pub struct Node<T> {
    /// line info: (begin_line, end_line)
    lineinfo: (u32, u32),
    inner: T,
}

impl<T> Node<T> {
    pub fn new(inner: T, lineinfo: (u32, u32)) -> Node<T> {
        Node {
            lineinfo,
            inner,
        }
    }

    pub fn inner(&self) -> &T {
        &self.inner
    }

    pub fn inner_mut(&mut self) -> &mut T {
        &mut self.inner
    }

    pub fn lineinfo(&self) -> (u32, u32) {
        self.lineinfo
    }

    pub fn line(&self) -> u32 {
        self.lineinfo.0
    }

    pub fn last_line(&self) -> u32 {
        self.lineinfo.1
    }
}

impl<T: Debug> Debug for Node<T> {
    fn fmt(&self, f: &mut Formatter) -> Result<(), Error> {
        write!(f, "<{}:{}> {:#?}", self.lineinfo.0, self.lineinfo.1, self.inner)
    }
}

impl<T: Display> Display for Node<T> {
    fn fmt(&self, f: &mut Formatter) -> Result<(), Error> {
        write!(f, "{}", self.inner)
    }
}

mod binop;
pub use binop::*;

mod unary_op;
pub use unary_op::*;

mod expr;
pub use expr::*;

mod field;
pub use field::*;

mod param_list;
pub use param_list::*;

mod func_def;
pub use func_def::*;

mod method_def;
pub use method_def::*;

mod method_call;
pub use method_call::*;

mod func_call;
pub use func_call::*;

mod if_then_else;
pub use if_then_else::*;

mod for_loop;
pub use for_loop::*;

mod stmt;
pub use stmt::*;
