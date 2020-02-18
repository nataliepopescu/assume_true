/* Test attribute macro */

extern crate macro_def;

use macro_def::assume_true;

#[assume_true(slice.len() >= 8)]
pub fn func_to_rewrite(slice: &mut [i32]) {

    for i in 0..8 {
        slice[i] += 1;
    }

}

#[assume_true(for c in slice1.iter() { slice2.len() >= *c; } )]
pub fn matrix_mult(slice1: &[usize], slice2: &mut [usize]) {
    for c in slice1.iter() {
        slice2[*c] += *c
    }
}
