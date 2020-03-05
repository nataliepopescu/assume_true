/* Test attribute macro */
#![feature(stmt_expr_attributes)]
#![feature(proc_macro_hygiene)]

extern crate macro_def;

use macro_def::assume_true;

#[no_mangle]
#[assume_true(slice.len() >= 8)]
pub fn func_to_rewrite(slice: &mut [i32]) {
    for i in 0..8 {
        slice[i] += 1;
    }
}

#[no_mangle]
#[assume_true(slice.len() >= len && len == 8)]
pub fn scalar_mult(len: usize, slice: &mut [i32]) {
    for i in 0..slice.len() {
        { slice[i] += 1; }
    }
}

#[no_mangle]
pub fn unsafe_sizes(input: &[usize], output: &mut [usize]) {
    for i in 0..input.len() {
        unsafe {
            *output.get_unchecked_mut(i) = *input.get_unchecked(i);
        }
    }
}

#[no_mangle]
pub fn fixed_sizes(input: &[usize; 32], output: &mut [usize; 32]) {
    for i in 0..input.len() {
        output[i] = input[i];
    }
}

#[no_mangle]
#[assume_true(output.len() == 32)]
pub fn fixed_input_size(input: &[usize; 32], output: &mut [usize]) {
    for i in 0..input.len() {
        output[i] = input[i];
    }
}

#[no_mangle]
#[assume_true(input.len() == 32)]
pub fn fixed_output_size(input: &[usize], output: &mut [usize; 32]) {
    for i in 0..input.len() {
        output[i] = input[i];
    }
}

#[no_mangle]
#[assume_true(for c in slice1.iter() { slice2.len() >= c })]
pub fn matrix_mult(slice1: &[usize], slice2: &mut [usize]) {
    for c in slice1.iter() {
        //#[assume_true(slice2.len() >= *c)]
        { slice2[*c] += *c; }
    }
}
