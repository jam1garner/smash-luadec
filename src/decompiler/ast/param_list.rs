use super::*;
use itertools::Itertools;

#[derive(Debug)]
pub struct ParList {
    pub vargs: bool,
    pub names: Vec<String>,
}

impl ParList {
    pub fn new() -> ParList {
        ParList {
            vargs: false,
            names: Vec::new(),
        }
    }

    pub fn set_vargs(&mut self, vargs: bool) {
        self.vargs = vargs;
    }

    pub fn set_names(&mut self, names: Vec<String>) {
        self.names = names;
    }

    pub fn push_param(&mut self, param: String) {
        self.names.push(param)
    }
}

impl Display for ParList {
    fn fmt(&self, f: &mut Formatter) -> Result<(), fmt::Error> {
        if self.vargs {
            write!(f, "{}",
                self.names.iter()
                          .chain(vec![String::from("...")].iter())
                          .join(",")
            )
        } else {
            write!(f, "{}",
                self.names.iter()
                          .join(",")
            )
        }
    }
}
