extern crate rand;
extern crate forpaper;
#[macro_use] extern crate bencher;

use bencher::{Bencher, black_box};

/*fn fixed_size_bench(bencher: &mut Bencher) {
    let mut app_buf: [u8; 320000] = [0; 320000];
    let mut other_buf: [u8; 320000] = [0; 320000];
    for i in 0..320000 {
        other_buf[i] = rand::random();
    }

    bencher.iter(|| {
        black_box(forpaper::fixed_size(&other_buf, &mut app_buf));
    });
}*/

/*#[inline(always)]
fn unwraps() {
    let iu8: u8 = 0xF;
    let c_iu8: u8 = 0xF;
    let mut mu8: u8 = 0xF;
    let mut c_mu8: u8 = 0xF;
    let iu32: u32 = 0xFFFF;
    let c_iu32: u32 = 0xFFFF;
    let mut mu32: u32 = 0xFFFF;
    let mut c_mu32: u32 = 0xFFFF;

    let some_iu8 = Some(&iu8);
    let clone_iu8 = Some(&c_iu8);
    assert_eq!(some_iu8.unwrap(), clone_iu8.unwrap());

    let some_mu8 = Some(&mut mu8);
    let clone_mu8 = Some(&mut c_mu8);
    assert_eq!(some_mu8.unwrap(), clone_mu8.unwrap());

    let some_iu32 = Some(&iu32);
    let clone_iu32 = Some(&c_iu32);
    assert_eq!(some_iu32.unwrap(), clone_iu32.unwrap());

    let some_mu32 = Some(&mut mu32);
    let clone_mu32 = Some(&mut c_mu32);
    assert_eq!(some_mu32.unwrap(), clone_mu32.unwrap());
}*/

fn unknown_size_bench(bencher: &mut Bencher) {
    let mut app_buf: [u8; 320000] = [0; 320000];
    let mut other_buf: [u8; 320000] = [0; 320000];
    for i in 0..320000 {
        other_buf[i] = rand::random();
    }

    bencher.iter(|| {
        black_box(forpaper::unknown_size(&other_buf, &mut app_buf));
    });
}

fn perf_mot_bench(bencher: &mut Bencher) {
    let iu8: u8 = 0xF;
    let c_iu8: u8 = 0xF;
    let mut mu8: u8 = 0xF;
    let mut c_mu8: u8 = 0xF;
    let iu32: u32 = 0xFFFF;
    let c_iu32: u32 = 0xFFFF;
    let mut mu32: u32 = 0xFFFF;
    let mut c_mu32: u32 = 0xFFFF;

    let some_iu8 = Some(&iu8);
    let clone_iu8 = Some(&c_iu8);
    assert_eq!(some_iu8.unwrap(), clone_iu8.unwrap());

    let some_mu8 = Some(&mut mu8);
    let clone_mu8 = Some(&mut c_mu8);
    assert_eq!(some_mu8.unwrap(), clone_mu8.unwrap());

    let some_iu32 = Some(&iu32);
    let clone_iu32 = Some(&c_iu32);
    assert_eq!(some_iu32.unwrap(), clone_iu32.unwrap());

    let some_mu32 = Some(&mut mu32);
    let clone_mu32 = Some(&mut c_mu32);
    assert_eq!(some_mu32.unwrap(), clone_mu32.unwrap());

    let mut app_buf: [u8; 320000] = [0; 320000];
    let mut other_buf: [u8; 320000] = [0; 320000];
    for i in 0..320000 {
        other_buf[i] = rand::random();
    }

    bencher.iter(|| {
        black_box(forpaper::perf_mot(&other_buf, &mut app_buf));
    });
}

/*fn transformation_bench(bencher: &mut Bencher) {
    let mut app_buf: [u8; 320000] = [0; 320000];
    let mut other_buf: [u8; 320000] = [0; 320000];
    for i in 0..320000 {
        other_buf[i] = rand::random();
    }

    bencher.iter(|| {
        black_box(forpaper::transformation(&other_buf, &mut app_buf));
    });
}*/

benchmark_group!(benches,
                 //fixed_size_bench,
                 unknown_size_bench,
                 perf_mot_bench); //,
                 //transformation_bench);

benchmark_main!(benches);
