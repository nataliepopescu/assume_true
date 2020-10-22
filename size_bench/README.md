# Slice Element Copies/Clones

### RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=yes" cargo bench

```sh
running 4 tests
test c_style_input_u8_fixed_bench  ... bench:     126,847 ns/iter (+/- 2,160)
test c_style_input_u16_fixed_bench ... bench:     138,772 ns/iter (+/- 967)
test c_style_input_u32_fixed_bench ... bench:     153,402 ns/iter (+/- 476)
test c_style_input_u64_fixed_bench ... bench:     226,659 ns/iter (+/- 542)

test result: ok. 0 passed; 0 failed; 0 ignored; 4 measured
```

### RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=yes -Z remove-bc" cargo bench

```sh
running 4 tests
test c_style_input_u8_fixed_bench  ... bench:      22,770 ns/iter (+/- 21)
test c_style_input_u16_fixed_bench ... bench:      47,383 ns/iter (+/- 51)
test c_style_input_u32_fixed_bench ... bench:      94,368 ns/iter (+/- 74)
test c_style_input_u64_fixed_bench ... bench:     189,525 ns/iter (+/- 92)

test result: ok. 0 passed; 0 failed; 0 ignored; 4 measured
```

## Scaled for same total number of bits

### RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=yes" cargo bench

```sh
running 4 tests
test c_style_input_u8_fixed_bench  ... bench:     126,633 ns/iter (+/- 2,262)
test c_style_input_u16_fixed_bench ... bench:      69,576 ns/iter (+/- 2,141)
test c_style_input_u32_fixed_bench ... bench:      38,625 ns/iter (+/- 106)
test c_style_input_u64_fixed_bench ... bench:      28,638 ns/iter (+/- 40)

test result: ok. 0 passed; 0 failed; 0 ignored; 4 measured
```


### RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=yes -Z remove-bc" cargo bench

```sh
running 4 tests
test c_style_input_u8_fixed_bench  ... bench:      22,186 ns/iter (+/- 26)
test c_style_input_u16_fixed_bench ... bench:      22,186 ns/iter (+/- 148)
test c_style_input_u32_fixed_bench ... bench:      22,190 ns/iter (+/- 249)
test c_style_input_u64_fixed_bench ... bench:      22,187 ns/iter (+/- 180)

test result: ok. 0 passed; 0 failed; 0 ignored; 4 measured
```
