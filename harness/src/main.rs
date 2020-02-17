/* Test attribute macro */

extern crate macro_def;

use macro_def::assume_true;

#[assume_true(true)]
fn func_to_rewrite(slice: &[i32]) {

    for i in 0..8 {
        println!("value at index {} = {}\n", i, slice[i]);
    }

}
    
pub fn main() {

    let array = [0i32; 8];
    func_to_rewrite(&array);

}
