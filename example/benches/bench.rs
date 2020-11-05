extern crate rand;
extern crate example;
#[macro_use] extern crate bencher;

use bencher::{Bencher, black_box};

fn c_style_size_fixed_bench(bencher: &mut Bencher) {
    let mut app_buf: [u8; 320000] = [0; 320000];
    let mut other_buf: [u8; 320000] = [0; 320000];
    for i in 0..320000 {
        other_buf[i] = rand::random();
    }

    bencher.iter(|| {
        black_box(example::c_style_size_fixed(&other_buf, &mut app_buf));
    });
}

fn c_style_input_size_fixed_bench(bencher: &mut Bencher) {
    let mut app_buf: [u8; 320000] = [0; 320000];
    let mut other_buf: [u8; 320000] = [0; 320000];
    for i in 0..320000 {
        other_buf[i] = rand::random();
    }

    bencher.iter(|| {
        black_box(example::c_style_input_size_fixed(&other_buf, &mut app_buf));
    });
}

fn c_style_output_size_fixed_bench(bencher: &mut Bencher) {
    let mut app_buf: [u8; 320000] = [0; 320000];
    let mut other_buf: [u8; 320000] = [0; 320000];
    for i in 0..320000 {
        other_buf[i] = rand::random();
    }

    bencher.iter(|| {
        black_box(example::c_style_output_size_fixed(&other_buf, &mut app_buf));
    });
}

fn c_style_unknown_size_bench(bencher: &mut Bencher) {
    let mut app_buf: [u8; 320000] = [0; 320000];
    let mut other_buf: [u8; 320000] = [0; 320000];
    for i in 0..320000 {
        other_buf[i] = rand::random();
    }

    bencher.iter(|| {
        black_box(example::c_style_unknown_size(&other_buf, &mut app_buf));
    });
}

benchmark_group!(benches,
                 c_style_size_fixed_bench,
                 c_style_input_size_fixed_bench,
                 c_style_output_size_fixed_bench,
                 c_style_unknown_size_bench);

benchmark_main!(benches);
