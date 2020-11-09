# Results

## rustc 1.46.0-dev; cargo 1.46-dev; LLVM 9.0

### Bounds Checks Present

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=yes" cargo bench`

```sh
running 4 tests
test c_style_input_size_fixed_bench  ... bench:     140,952 ns/iter (+/- 15,182)
test c_style_output_size_fixed_bench ... bench:     136,712 ns/iter (+/- 1,512)
test c_style_size_fixed_bench        ... bench:      22,776 ns/iter (+/- 36)
test c_style_unknown_size_bench      ... bench:     178,516 ns/iter (+/- 2,679)

test result: ok. 0 passed; 0 failed; 0 ignored; 4 measured
```

### IRCE

```sh
running 4 tests
test c_style_input_size_fixed_bench  ... bench:     126,473 ns/iter (+/- 2,001)
test c_style_output_size_fixed_bench ... bench:     137,047 ns/iter (+/- 1,981)
test c_style_size_fixed_bench        ... bench:      22,949 ns/iter (+/- 35)
test c_style_unknown_size_bench      ... bench:     178,774 ns/iter (+/- 1,669)

test result: ok. 0 passed; 0 failed; 0 ignored; 4 measured
```

### Our Pass

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=yes -Z remove-bc" cargo bench`

```sh
running 4 tests
test c_style_input_size_fixed_bench  ... bench:      24,777 ns/iter (+/- 47)
test c_style_output_size_fixed_bench ... bench:      24,777 ns/iter (+/- 26)
test c_style_size_fixed_bench        ... bench:      24,778 ns/iter (+/- 27)
test c_style_unknown_size_bench      ... bench:      24,778 ns/iter (+/- 37)

test result: ok. 0 passed; 0 failed; 0 ignored; 4 measured
```
