# Results

## rustc 1.46.0-dev; cargo 1.46-dev; LLVM 9.0

### Bounds Checks Present

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=yes" cargo bench`

```sh
running 4 tests
test c_style_input_size_fixed_bench  ... bench:     126,546 ns/iter (+/- 1,703)
test c_style_output_size_fixed_bench ... bench:     137,422 ns/iter (+/- 3,498)
test c_style_size_fixed_bench        ... bench:      24,663 ns/iter (+/- 74)
test c_style_unknown_size_bench      ... bench:     178,364 ns/iter (+/- 3,543)

test result: ok. 0 passed; 0 failed; 0 ignored; 4 measured
```

### IRCE

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=yes -Z remove-bc" cargo bench`

#### PHASE ORDER: IRCE; SimplifyCFG; DCE

```sh
running 4 tests
test c_style_input_size_fixed_bench  ... bench:     126,588 ns/iter (+/- 1,806)
test c_style_output_size_fixed_bench ... bench:     135,423 ns/iter (+/- 2,250)
test c_style_size_fixed_bench        ... bench:      24,268 ns/iter (+/- 29)
test c_style_unknown_size_bench      ... bench:     178,680 ns/iter (+/- 2,048)

test result: ok. 0 passed; 0 failed; 0 ignored; 4 measured
```

#### PHASE ORDER: SimplifyCFG; IRCE; SimplifyCFG; DCE

### Our Pass

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=yes -Z remove-bc" cargo bench`

#### PHASE ORDER: RBC; SimplifyCFG; DCE

```sh
running 4 tests
test c_style_input_size_fixed_bench  ... bench:      24,777 ns/iter (+/- 47)
test c_style_output_size_fixed_bench ... bench:      24,777 ns/iter (+/- 26)
test c_style_size_fixed_bench        ... bench:      24,778 ns/iter (+/- 27)
test c_style_unknown_size_bench      ... bench:      24,778 ns/iter (+/- 37)

test result: ok. 0 passed; 0 failed; 0 ignored; 4 measured
```

#### PHASE ORDER: SimplifyCFG; RBC; SimplifyCFG; DCE
