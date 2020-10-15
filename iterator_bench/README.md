# Testing our techniques

Tested on code from this repo: [iterator_bench](https://github.com/alevy/iterator_bench).

Access the linked repository for the original benchmarks. We unfold the original
implementation for easier analysis at the LLVM IR level. 

## rustc 1.46.0-dev; cargo 1.46-dev; LLVM 9.0

### Bounds Checks Present

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=yes" cargo bench`

```sh
running 18 tests
test c_style_fixed_size_bench                      ... bench:      52,749 ns/iter (+/- 57)
test c_style_input_size_fixed_bench                ... bench:     274,815 ns/iter (+/- 2,459)
test c_style_output_size_fixed_bench               ... bench:     134,689 ns/iter (+/- 708)
test c_style_unknown_size_bench                    ... bench:     266,881 ns/iter (+/- 2,257)
test c_style_unknown_size_limit_bench              ... bench:     321,051 ns/iter (+/- 3,972)
test optimal_unsafe_bench                          ... bench:      52,751 ns/iter (+/- 82)
test zip_chunks_exact_unknown_size_bench           ... bench:      52,764 ns/iter (+/- 76)
test zip_chunks_exact_unknown_size_slice_bench     ... bench:      52,760 ns/iter (+/- 96)
test zip_chunks_exact_unknown_size_take_bench      ... bench:     170,085 ns/iter (+/- 1,478)
test zip_chunks_exact_unknown_size_take_iter_bench ... bench:     169,911 ns/iter (+/- 950)
test zip_chunks_fixed_size_bench                   ... bench:      52,752 ns/iter (+/- 99)
test zip_chunks_fixed_size_take_bench              ... bench:      52,748 ns/iter (+/- 63)
test zip_chunks_fixed_size_take_iter_bench         ... bench:     130,834 ns/iter (+/- 184)
test zip_chunks_input_size_fixed_bench             ... bench:     481,564 ns/iter (+/- 628)
test zip_chunks_output_size_fixed_bench            ... bench:     388,804 ns/iter (+/- 4,412)
test zip_chunks_unknown_size_bench                 ... bench:     481,585 ns/iter (+/- 2,336)
test zip_chunks_unknown_size_take_bench            ... bench:     428,141 ns/iter (+/- 758)
test zip_chunks_unknown_size_take_iter_bench       ... bench:     962,893 ns/iter (+/- 3,755)

test result: ok. 0 passed; 0 failed; 0 ignored; 18 measured
```

### Bounds Checks Removed 

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=yes -Z remove-bc" cargo bench`

```sh
running 18 tests                                                                                          
test c_style_fixed_size_bench                      ... bench:      52,192 ns/iter (+/- 59)                
test c_style_input_size_fixed_bench                ... bench:      52,192 ns/iter (+/- 227)               
test c_style_output_size_fixed_bench               ... bench:      52,221 ns/iter (+/- 116)               
test c_style_unknown_size_bench                    ... bench:      52,226 ns/iter (+/- 610)               
test c_style_unknown_size_limit_bench              ... bench:      52,234 ns/iter (+/- 1,084)             
test optimal_unsafe_bench                          ... bench:      52,198 ns/iter (+/- 145)
test zip_chunks_exact_unknown_size_bench           ... bench:      52,200 ns/iter (+/- 48)
test zip_chunks_exact_unknown_size_slice_bench     ... bench:      52,202 ns/iter (+/- 79)
test zip_chunks_exact_unknown_size_take_bench      ... bench:     170,290 ns/iter (+/- 124)
test zip_chunks_exact_unknown_size_take_iter_bench ... bench:     170,305 ns/iter (+/- 247)
test zip_chunks_fixed_size_bench                   ... bench:      52,190 ns/iter (+/- 135)
test zip_chunks_fixed_size_take_bench              ... bench:      52,189 ns/iter (+/- 80)
test zip_chunks_fixed_size_take_iter_bench         ... bench:     130,827 ns/iter (+/- 617)
test zip_chunks_input_size_fixed_bench             ... bench:      52,223 ns/iter (+/- 96)
test zip_chunks_output_size_fixed_bench            ... bench:      52,222 ns/iter (+/- 111)
test zip_chunks_unknown_size_bench                 ... bench:      52,192 ns/iter (+/- 80)
test zip_chunks_unknown_size_take_bench            ... bench:     170,286 ns/iter (+/- 181)
test zip_chunks_unknown_size_take_iter_bench       ... bench:     963,019 ns/iter (+/- 921)

test result: ok. 0 passed; 0 failed; 0 ignored; 18 measured
```

