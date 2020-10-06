extern crate rand;
extern crate example;
#[macro_use] extern crate bencher;

use bencher::Bencher;

fn bench(bencher: &mut Bencher) {
    let mut app_buf: [usize; 320000] = [0; 320000];
    let mut other_buf: [usize; 320000] = [0; 320000];
    for i in 0..320000 {
        other_buf[i] = rand::random();
    }

    bencher.iter(|| {
        black_box(example::c_style_input_size_fixed(&other_buf, &mut app_buf));
    });
}

benchmark_group!(benches,
                 bench);

benchmark_main!(benches);
