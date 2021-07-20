/** Checked indexing **/

#[no_mangle]
pub fn unknown_size(src: &[u8], dst: &mut [u8]) {
    for i in 0..src.len() {
        *dst.get_mut(i).unwrap() = *src.get(i).unwrap();
    }
}

/** Unchecked indexing **/

#[no_mangle]
pub fn perf_mot(src: &[u8], dst: &mut [u8]) {
    for i in 0..src.len() {
        unsafe {
            *dst.get_unchecked_mut(i) = *src.get_unchecked(i);
        }
    }
}
