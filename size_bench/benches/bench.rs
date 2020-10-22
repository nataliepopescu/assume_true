extern crate rand;
extern crate size_bench;
#[macro_use] extern crate bencher;

use bencher::{Bencher, black_box};

fn c_style_input_usize_fixed_bench(bencher: &mut Bencher) {
    let mut app_buf: [usize; 320000] = [0; 320000];
    let mut other_buf: [usize; 320000] = [0; 320000];
    for i in 0..320000 {
        other_buf[i] = rand::random();
    }

    bencher.iter(|| {
        black_box(size_bench::c_style_input_usize_fixed(&other_buf, &mut app_buf));
    });
}

fn c_style_input_u128_fixed_bench(bencher: &mut Bencher) {
    let mut app_buf: [u128; 320000] = [0; 320000];
    let mut other_buf: [u128; 320000] = [0; 320000];
    for i in 0..320000 {
        other_buf[i] = rand::random();
    }

    bencher.iter(|| {
        black_box(size_bench::c_style_input_u128_fixed(&other_buf, &mut app_buf));
    });
}

fn c_style_input_u64_fixed_bench(bencher: &mut Bencher) {
    let mut app_buf: [u64; 320000] = [0; 320000];
    let mut other_buf: [u64; 320000] = [0; 320000];
    for i in 0..320000 {
        other_buf[i] = rand::random();
    }

    bencher.iter(|| {
        black_box(size_bench::c_style_input_u64_fixed(&other_buf, &mut app_buf));
    });
}

fn c_style_input_u32_fixed_bench(bencher: &mut Bencher) {
    let mut app_buf: [u32; 320000] = [0; 320000];
    let mut other_buf: [u32; 320000] = [0; 320000];
    for i in 0..320000 {
        other_buf[i] = rand::random();
    }

    bencher.iter(|| {
        black_box(size_bench::c_style_input_u32_fixed(&other_buf, &mut app_buf));
    });
}

fn c_style_input_u16_fixed_bench(bencher: &mut Bencher) {
    let mut app_buf: [u16; 320000] = [0; 320000];
    let mut other_buf: [u16; 320000] = [0; 320000];
    for i in 0..320000 {
        other_buf[i] = rand::random();
    }

    bencher.iter(|| {
        black_box(size_bench::c_style_input_u16_fixed(&other_buf, &mut app_buf));
    });
}

fn c_style_input_u8_fixed_bench(bencher: &mut Bencher) {
    let mut app_buf: [u8; 320000] = [0; 320000];
    let mut other_buf: [u8; 320000] = [0; 320000];
    for i in 0..320000 {
        other_buf[i] = rand::random();
    }

    bencher.iter(|| {
        black_box(size_bench::c_style_input_u8_fixed(&other_buf, &mut app_buf));
    });
}

benchmark_group!(benches,
                 //c_style_input_usize_fixed_bench,
                 //c_style_input_u128_fixed_bench,
                 c_style_input_u64_fixed_bench,
                 c_style_input_u32_fixed_bench,
                 c_style_input_u16_fixed_bench,
                 c_style_input_u8_fixed_bench);

benchmark_main!(benches);
