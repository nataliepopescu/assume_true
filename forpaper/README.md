# Results

## rustc 1.46.0-dev; cargo 1.46-dev; LLVM 9.0

## Bounds Checks Present

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=yes" cargo bench`

```sh
running 4 tests
test fixed_size_bench     ... bench:      22,943 ns/iter (+/- 16)
test perf_mot_bench       ... bench:      22,933 ns/iter (+/- 20)
test transformation_bench ... bench:      27,491 ns/iter (+/- 23)
test unknown_size_bench   ... bench:     178,604 ns/iter (+/- 2,663)

test result: ok. 0 passed; 0 failed; 0 ignored; 4 measured
```

## Our Pass

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=yes -Z remove-bc" cargo bench`

```sh
running 4 tests
test fixed_size_bench     ... bench:      25,317 ns/iter (+/- 21)
test perf_mot_bench       ... bench:      25,318 ns/iter (+/- 15)
test transformation_bench ... bench:      25,316 ns/iter (+/- 31)
test unknown_size_bench   ... bench:      25,318 ns/iter (+/- 20)

test result: ok. 0 passed; 0 failed; 0 ignored; 4 measured
```
