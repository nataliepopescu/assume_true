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
    let iu8: u8 = 0xF;
    let some_iu8 = Some(&iu8);
    let _iu8 = some_iu8.unwrap();

    let mut mu8: u8 = 0xF;
    let some_mu8 = Some(&mut mu8);
    let _mu8 = some_mu8.unwrap();

    for i in 0..src.len() {
        unsafe {
            *dst.get_unchecked_mut(i) = *src.get_unchecked(i);
        }
    }
}
