
/** Fixed input size, unknown output size **/

#[no_mangle]
pub fn c_style_input_usize_fixed(input: &[usize; 320000], output: &mut [usize]) {
    for i in 0..input.len() {
        output[i] = input[i];
    }
}

#[no_mangle]
pub fn c_style_input_u128_fixed(input: &[u128; 320000], output: &mut [u128]) {
    for i in 0..input.len() {
        output[i] = input[i];
    }
}

#[no_mangle]
pub fn c_style_input_u64_fixed(input: &[u64; 320000], output: &mut [u64]) {
    for i in 0..input.len() {
        output[i] = input[i];
    }
}

#[no_mangle]
pub fn c_style_input_u32_fixed(input: &[u32; 320000], output: &mut [u32]) {
    for i in 0..input.len() {
        output[i] = input[i];
    }
}

#[no_mangle]
pub fn c_style_input_u16_fixed(input: &[u16; 320000], output: &mut [u16]) {
    for i in 0..input.len() {
        output[i] = input[i];
    }
}

#[no_mangle]
pub fn c_style_input_u8_fixed(input: &[u8; 320000], output: &mut [u8]) {
    for i in 0..input.len() {
        output[i] = input[i];
    }
}
