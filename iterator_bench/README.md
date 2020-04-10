# Using our Custom Macro

Tested on code from this repo: [iterator_bench](https://github.com/alevy/iterator_bench).

Access the linked repository for the original benchmarks. The purpose of the code in this 
folder is, rather, to evaluate how the `assume_true` macro can be used.

## Running the Benchmarks

Without `assume_true`: 

```
running 36 tests
test c_style_fixed_size::_test ... ignored
test c_style_input_size_fixed::_test ... ignored
test c_style_output_size_fixed::_test ... ignored
test c_style_unknown_size::_test ... ignored
test c_style_unknown_size_limit::_test ... ignored
test optimal_unsafe::_test ... ignored
test zip_chunks_exact_unknown_size::_test ... ignored
test zip_chunks_exact_unknown_size_slice::_test ... ignored
test zip_chunks_exact_unknown_size_take::_test ... ignored
test zip_chunks_exact_unknown_size_take_iter::_test ... ignored
test zip_chunks_fixed_size::_test ... ignored
test zip_chunks_fixed_size_take::_test ... ignored
test zip_chunks_fixed_size_take_iter::_test ... ignored
test zip_chunks_input_size_fixed::_test ... ignored
test zip_chunks_output_size_fixed::_test ... ignored
test zip_chunks_unknown_size::_test ... ignored
test zip_chunks_unknown_size_take::_test ... ignored
test zip_chunks_unknown_size_take_iter::_test ... ignored
test c_style_fixed_size::_bench                      ... bench:      25,367 ns/iter (+/- 1,330)
test c_style_input_size_fixed::_bench                ... bench:     269,980 ns/iter (+/- 23,800)
test c_style_output_size_fixed::_bench               ... bench:     179,312 ns/iter (+/- 9,926)
test c_style_unknown_size::_bench                    ... bench:     261,756 ns/iter (+/- 12,472)
test c_style_unknown_size_limit::_bench              ... bench:     312,014 ns/iter (+/- 32,731)
test optimal_unsafe::_bench                          ... bench:      25,648 ns/iter (+/- 4,346)
test zip_chunks_exact_unknown_size::_bench           ... bench:      25,586 ns/iter (+/- 1,398)
test zip_chunks_exact_unknown_size_slice::_bench     ... bench:      25,570 ns/iter (+/- 742)
test zip_chunks_exact_unknown_size_take::_bench      ... bench:     135,506 ns/iter (+/- 16,368)
test zip_chunks_exact_unknown_size_take_iter::_bench ... bench:     137,284 ns/iter (+/- 12,525)
test zip_chunks_fixed_size::_bench                   ... bench:      25,593 ns/iter (+/- 2,204)
test zip_chunks_fixed_size_take::_bench              ... bench:      25,536 ns/iter (+/- 6,487)
test zip_chunks_fixed_size_take_iter::_bench         ... bench:      25,508 ns/iter (+/- 1,877)
test zip_chunks_input_size_fixed::_bench             ... bench:     337,025 ns/iter (+/- 21,258)
test zip_chunks_output_size_fixed::_bench            ... bench:     359,358 ns/iter (+/- 45,488)
test zip_chunks_unknown_size::_bench                 ... bench:     337,640 ns/iter (+/- 39,321)
test zip_chunks_unknown_size_take::_bench            ... bench:     538,832 ns/iter (+/- 41,679)
test zip_chunks_unknown_size_take_iter::_bench       ... bench:     916,621 ns/iter (+/- 99,467)

test result: ok. 0 passed; 0 failed; 18 ignored; 18 measured; 0 filtered out
```

With `assume_true`:

```
running 36 tests
test c_style_fixed_size::_test ... ignored
test c_style_input_size_fixed::_test ... ignored
test c_style_output_size_fixed::_test ... ignored
test c_style_unknown_size::_test ... ignored
test c_style_unknown_size_limit::_test ... ignored
test optimal_unsafe::_test ... ignored
test zip_chunks_exact_unknown_size::_test ... ignored
test zip_chunks_exact_unknown_size_slice::_test ... ignored
test zip_chunks_exact_unknown_size_take::_test ... ignored
test zip_chunks_exact_unknown_size_take_iter::_test ... ignored
test zip_chunks_fixed_size::_test ... ignored
test zip_chunks_fixed_size_take::_test ... ignored
test zip_chunks_fixed_size_take_iter::_test ... ignored
test zip_chunks_input_size_fixed::_test ... ignored
test zip_chunks_output_size_fixed::_test ... ignored
test zip_chunks_unknown_size::_test ... ignored
test zip_chunks_unknown_size_take::_test ... ignored
test zip_chunks_unknown_size_take_iter::_test ... ignored
test c_style_fixed_size::_bench                      ... bench:      25,420 ns/iter (+/- 1,883)
test c_style_input_size_fixed::_bench                ... bench:      25,576 ns/iter (+/- 4,821)
test c_style_output_size_fixed::_bench               ... bench:      25,487 ns/iter (+/- 1,444)
test c_style_unknown_size::_bench                    ... bench:      25,546 ns/iter (+/- 4,077)
test c_style_unknown_size_limit::_bench              ... bench:      25,640 ns/iter (+/- 10,252)
test optimal_unsafe::_bench                          ... bench:      25,446 ns/iter (+/- 4,048)
test zip_chunks_exact_unknown_size::_bench           ... bench:      25,489 ns/iter (+/- 1,967)
test zip_chunks_exact_unknown_size_slice::_bench     ... bench:      25,451 ns/iter (+/- 5,668)
test zip_chunks_exact_unknown_size_take::_bench      ... bench:      25,457 ns/iter (+/- 1,747)
test zip_chunks_exact_unknown_size_take_iter::_bench ... bench:      25,465 ns/iter (+/- 2,293)
test zip_chunks_fixed_size::_bench                   ... bench:      25,493 ns/iter (+/- 7,283)
test zip_chunks_fixed_size_take::_bench              ... bench:      25,452 ns/iter (+/- 16,171)
test zip_chunks_fixed_size_take_iter::_bench         ... bench:      25,537 ns/iter (+/- 7,374)
test zip_chunks_input_size_fixed::_bench             ... bench:      25,479 ns/iter (+/- 1,395)
test zip_chunks_output_size_fixed::_bench            ... bench:      25,589 ns/iter (+/- 6,091)
test zip_chunks_unknown_size::_bench                 ... bench:      26,600 ns/iter (+/- 27,517)
test zip_chunks_unknown_size_take::_bench            ... bench:      26,543 ns/iter (+/- 2,013)
test zip_chunks_unknown_size_take_iter::_bench       ... bench:     112,191 ns/iter (+/- 2,640)

test result: ok. 0 passed; 0 failed; 18 ignored; 18 measured; 0 filtered out
```
