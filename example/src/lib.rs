/* Test attribute macro */
#![feature(stmt_expr_attributes)]
#![feature(proc_macro_hygiene)]

extern crate macro_def;

use macro_def::assume_true;

/** Fixed input size, unknown output size **/

#[no_mangle]
pub fn c_style_input_size_fixed(input: &[usize; 320000], output: &mut [usize]) {
    for i in 0..input.len() {
        output[i] = input[i];
    }
}

#[no_mangle]
#[assume_true(output.len() == 320000)]
pub fn c_style_input_size_fixed_opt(input: &[usize; 320000], output: &mut [usize]) {
    for i in 0..input.len() {
        output[i] = input[i];
    }
}

/** Fixed output size, unknown input size **/

#[no_mangle]
pub fn c_style_output_size_fixed(input: &[usize], output: &mut [usize; 320000]) {
    for i in 0..input.len() {
        output[i] = input[i];
    }
}
#[no_mangle]
#[assume_true(input.len() == 320000)]
pub fn c_style_output_size_fixed_opt(input: &[usize], output: &mut [usize; 320000]) {
    for i in 0..input.len() {
        output[i] = input[i];
    }
}

/** Both input and output sizes unknown **/

#[no_mangle]
pub fn c_style_unknown_size(input: &[usize], output: &mut [usize]) {
    for i in 0..input.len() {
        output[i] = input[i];
    }
}

#[no_mangle]
#[assume_true(input.len() == 320000 && output.len() == input.len())]
pub fn c_style_unknown_size_opt(input: &[usize], output: &mut [usize]) {
    for i in 0..input.len() {
        output[i] = input[i];
    }
}
