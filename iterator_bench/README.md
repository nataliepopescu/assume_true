# Testing our techniques

Tested on code from this repo: [iterator_bench](https://github.com/alevy/iterator_bench).

Access the linked repository for the original benchmarks. We unfold the original
implementation for easier analysis at the LLVM IR level. 

## Technique 1

### rustc nightly-2020-07-05 (baseline)

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no -C lto=off" cargo rustc --release --bench bench`

```
running 18 tests
test c_style_fixed_size_bench                      ... bench:     428,555 ns/iter (+/- 8,337)
test c_style_input_size_fixed_bench                ... bench:     429,159 ns/iter (+/- 9,710)
test c_style_output_size_fixed_bench               ... bench:     429,320 ns/iter (+/- 2,685)
test c_style_unknown_size_bench                    ... bench:     322,946 ns/iter (+/- 7,104)
test c_style_unknown_size_limit_bench              ... bench:     322,886 ns/iter (+/- 6,745)
test optimal_unsafe_bench                          ... bench:      40,684 ns/iter (+/- 458)
test zip_chunks_exact_unknown_size_bench           ... bench:   1,016,005 ns/iter (+/- 21,945)
test zip_chunks_exact_unknown_size_slice_bench     ... bench:     984,446 ns/iter (+/- 9,101)
test zip_chunks_exact_unknown_size_take_bench      ... bench:     981,583 ns/iter (+/- 6,543)
test zip_chunks_exact_unknown_size_take_iter_bench ... bench:   1,825,542 ns/iter (+/- 26,806)
test zip_chunks_fixed_size_bench                   ... bench:   1,290,517 ns/iter (+/- 8,405)
test zip_chunks_fixed_size_take_bench              ... bench:   1,224,756 ns/iter (+/- 11,075)
test zip_chunks_fixed_size_take_iter_bench         ... bench:   1,725,643 ns/iter (+/- 14,241)
test zip_chunks_input_size_fixed_bench             ... bench:   1,204,155 ns/iter (+/- 11,216)
test zip_chunks_output_size_fixed_bench            ... bench:   1,206,671 ns/iter (+/- 8,115)
test zip_chunks_unknown_size_bench                 ... bench:   1,206,251 ns/iter (+/- 21,175)
test zip_chunks_unknown_size_take_bench            ... bench:   1,098,509 ns/iter (+/- 9,083)
test zip_chunks_unknown_size_take_iter_bench       ... bench:   1,683,003 ns/iter (+/- 28,746)

test result: ok. 0 passed; 0 failed; 0 ignored; 18 measured
```

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no" cargo rustc --release --bench bench`

```
running 18 tests
test c_style_fixed_size_bench                      ... bench:      41,546 ns/iter (+/- 448)
test c_style_input_size_fixed_bench                ... bench:     275,590 ns/iter (+/- 5,302)
test c_style_output_size_fixed_bench               ... bench:     135,650 ns/iter (+/- 1,629)
test c_style_unknown_size_bench                    ... bench:     306,289 ns/iter (+/- 3,379)
test c_style_unknown_size_limit_bench              ... bench:     321,753 ns/iter (+/- 3,958)
test optimal_unsafe_bench                          ... bench:      41,539 ns/iter (+/- 502)
test zip_chunks_exact_unknown_size_bench           ... bench:      41,953 ns/iter (+/- 489)
test zip_chunks_exact_unknown_size_slice_bench     ... bench:      41,960 ns/iter (+/- 598)
test zip_chunks_exact_unknown_size_take_bench      ... bench:     164,581 ns/iter (+/- 3,159)
test zip_chunks_exact_unknown_size_take_iter_bench ... bench:     164,646 ns/iter (+/- 4,699)
test zip_chunks_fixed_size_bench                   ... bench:      41,781 ns/iter (+/- 371)
test zip_chunks_fixed_size_take_bench              ... bench:      41,840 ns/iter (+/- 515)
test zip_chunks_fixed_size_take_iter_bench         ... bench:     134,990 ns/iter (+/- 2,448)
test zip_chunks_input_size_fixed_bench             ... bench:     428,757 ns/iter (+/- 2,629)
test zip_chunks_output_size_fixed_bench            ... bench:      41,951 ns/iter (+/- 480)
test zip_chunks_unknown_size_bench                 ... bench:     401,812 ns/iter (+/- 2,175)
test zip_chunks_unknown_size_take_bench            ... bench:     642,639 ns/iter (+/- 3,208)
test zip_chunks_unknown_size_take_iter_bench       ... bench:     858,561 ns/iter (+/- 5,014)

test result: ok. 0 passed; 0 failed; 0 ignored; 18 measured
```

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no -C lto=off -C codegen-units=1" cargo rustc --release --bench bench`

```
running 18 tests
test c_style_fixed_size_bench                      ... bench:      40,598 ns/iter (+/- 182)
test c_style_input_size_fixed_bench                ... bench:     294,751 ns/iter (+/- 4,280)
test c_style_output_size_fixed_bench               ... bench:     214,079 ns/iter (+/- 179)
test c_style_unknown_size_bench                    ... bench:     321,114 ns/iter (+/- 390)
test c_style_unknown_size_limit_bench              ... bench:     366,580 ns/iter (+/- 3,108)
test optimal_unsafe_bench                          ... bench:      40,662 ns/iter (+/- 106)
test zip_chunks_exact_unknown_size_bench           ... bench:      40,655 ns/iter (+/- 163)
test zip_chunks_exact_unknown_size_slice_bench     ... bench:      40,644 ns/iter (+/- 123)
test zip_chunks_exact_unknown_size_take_bench      ... bench:     164,691 ns/iter (+/- 454)
test zip_chunks_exact_unknown_size_take_iter_bench ... bench:     164,703 ns/iter (+/- 529)
test zip_chunks_fixed_size_bench                   ... bench:      40,767 ns/iter (+/- 125)
test zip_chunks_fixed_size_take_bench              ... bench:      40,779 ns/iter (+/- 127)
test zip_chunks_fixed_size_take_iter_bench         ... bench:     134,000 ns/iter (+/- 175)
test zip_chunks_input_size_fixed_bench             ... bench:     375,086 ns/iter (+/- 762)
test zip_chunks_output_size_fixed_bench            ... bench:      40,656 ns/iter (+/- 107)
test zip_chunks_unknown_size_bench                 ... bench:     401,564 ns/iter (+/- 251)
test zip_chunks_unknown_size_take_bench            ... bench:     401,469 ns/iter (+/- 202)
test zip_chunks_unknown_size_take_iter_bench       ... bench:   1,070,332 ns/iter (+/- 11,911)

test result: ok. 0 passed; 0 failed; 0 ignored; 18 measured
```

### MIR modification

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no -C lto=off" cargo rustc --release --bench bench`

```
running 18 tests
test c_style_fixed_size_bench                      ... bench:      41,541 ns/iter (+/- 517)
test c_style_input_size_fixed_bench                ... bench:      41,636 ns/iter (+/- 573)
test c_style_output_size_fixed_bench               ... bench:      41,694 ns/iter (+/- 794)
test c_style_unknown_size_bench                    ... bench:      41,733 ns/iter (+/- 532)
test c_style_unknown_size_limit_bench              ... bench:      41,920 ns/iter (+/- 381)
test optimal_unsafe_bench                          ... bench:      41,543 ns/iter (+/- 558)
test zip_chunks_exact_unknown_size_bench           ... bench:     947,627 ns/iter (+/- 16,794)
test zip_chunks_exact_unknown_size_slice_bench     ... bench:     940,215 ns/iter (+/- 28,451)
test zip_chunks_exact_unknown_size_take_bench      ... bench:   1,088,251 ns/iter (+/- 10,345)
test zip_chunks_exact_unknown_size_take_iter_bench ... bench:   1,583,616 ns/iter (+/- 25,872)
test zip_chunks_fixed_size_bench                   ... bench:     977,830 ns/iter (+/- 10,430)
test zip_chunks_fixed_size_take_bench              ... bench:     987,401 ns/iter (+/- 5,812)
test zip_chunks_fixed_size_take_iter_bench         ... bench:   1,885,645 ns/iter (+/- 38,369)
test zip_chunks_input_size_fixed_bench             ... bench:     979,293 ns/iter (+/- 8,310)
test zip_chunks_output_size_fixed_bench            ... bench:     976,007 ns/iter (+/- 9,907)
test zip_chunks_unknown_size_bench                 ... bench:   1,085,590 ns/iter (+/- 18,027)
test zip_chunks_unknown_size_take_bench            ... bench:   1,210,537 ns/iter (+/- 9,946)
test zip_chunks_unknown_size_take_iter_bench       ... bench:   1,726,873 ns/iter (+/- 18,261)

test result: ok. 0 passed; 0 failed; 0 ignored; 18 measured
```

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no" cargo rustc --release --bench bench`

```
running 18 tests
test c_style_fixed_size_bench                      ... bench:      39,607 ns/iter (+/- 507)
test c_style_input_size_fixed_bench                ... bench:      39,687 ns/iter (+/- 470)
test c_style_output_size_fixed_bench               ... bench:      39,623 ns/iter (+/- 480)
test c_style_unknown_size_bench                    ... bench:      39,759 ns/iter (+/- 577)
test c_style_unknown_size_limit_bench              ... bench:      39,622 ns/iter (+/- 595)
test optimal_unsafe_bench                          ... bench:      39,588 ns/iter (+/- 447)
test zip_chunks_exact_unknown_size_bench           ... bench:      40,042 ns/iter (+/- 843)
test zip_chunks_exact_unknown_size_slice_bench     ... bench:      39,965 ns/iter (+/- 469)
test zip_chunks_exact_unknown_size_take_bench      ... bench:     164,471 ns/iter (+/- 3,507)
test zip_chunks_exact_unknown_size_take_iter_bench ... bench:     164,450 ns/iter (+/- 3,076)
test zip_chunks_fixed_size_bench                   ... bench:      39,645 ns/iter (+/- 529)
test zip_chunks_fixed_size_take_bench              ... bench:      39,794 ns/iter (+/- 415)
test zip_chunks_fixed_size_take_iter_bench         ... bench:     134,381 ns/iter (+/- 3,889)
test zip_chunks_input_size_fixed_bench             ... bench:      40,152 ns/iter (+/- 544)
test zip_chunks_output_size_fixed_bench            ... bench:      39,950 ns/iter (+/- 615)
test zip_chunks_unknown_size_bench                 ... bench:      40,075 ns/iter (+/- 485)
test zip_chunks_unknown_size_take_bench            ... bench:     164,402 ns/iter (+/- 2,930)
test zip_chunks_unknown_size_take_iter_bench       ... bench:     858,948 ns/iter (+/- 6,119)

test result: ok. 0 passed; 0 failed; 0 ignored; 18 measured
```

## Technique 2

### LLVM pass disabled (baseline)

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no -C lto=off" cargo rustc --release --bench bench`

```
running 18 tests
test c_style_fixed_size_bench                      ... bench:     428,572 ns/iter (+/- 5,114)
test c_style_input_size_fixed_bench                ... bench:     428,973 ns/iter (+/- 6,619)
test c_style_output_size_fixed_bench               ... bench:     428,549 ns/iter (+/- 11,063)
test c_style_unknown_size_bench                    ... bench:     325,029 ns/iter (+/- 7,965)
test c_style_unknown_size_limit_bench              ... bench:     370,505 ns/iter (+/- 9,494)
test optimal_unsafe_bench                          ... bench:      44,683 ns/iter (+/- 366)
test zip_chunks_exact_unknown_size_bench           ... bench:   1,018,307 ns/iter (+/- 18,466)
test zip_chunks_exact_unknown_size_slice_bench     ... bench:     975,305 ns/iter (+/- 17,643)
test zip_chunks_exact_unknown_size_take_bench      ... bench:     983,537 ns/iter (+/- 14,786)
test zip_chunks_exact_unknown_size_take_iter_bench ... bench:   1,825,764 ns/iter (+/- 25,366)
test zip_chunks_fixed_size_bench                   ... bench:   1,288,895 ns/iter (+/- 16,135)
test zip_chunks_fixed_size_take_bench              ... bench:   1,223,006 ns/iter (+/- 7,841)
test zip_chunks_fixed_size_take_iter_bench         ... bench:   1,772,363 ns/iter (+/- 18,274)
test zip_chunks_input_size_fixed_bench             ... bench:   1,202,765 ns/iter (+/- 20,857)
test zip_chunks_output_size_fixed_bench            ... bench:   1,202,874 ns/iter (+/- 16,887)
test zip_chunks_unknown_size_bench                 ... bench:   1,210,098 ns/iter (+/- 16,369)
test zip_chunks_unknown_size_take_bench            ... bench:   1,100,169 ns/iter (+/- 19,258)
test zip_chunks_unknown_size_take_iter_bench       ... bench:   1,675,233 ns/iter (+/- 19,756)

test result: ok. 0 passed; 0 failed; 0 ignored; 18 measured
```

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no" cargo rustc --release --bench bench`

```
running 18 tests
test c_style_fixed_size_bench                      ... bench:      43,292 ns/iter (+/- 357)
test c_style_input_size_fixed_bench                ... bench:     321,459 ns/iter (+/- 8,830)
test c_style_output_size_fixed_bench               ... bench:     214,221 ns/iter (+/- 473)
test c_style_unknown_size_bench                    ... bench:     321,247 ns/iter (+/- 3,371)
test c_style_unknown_size_limit_bench              ... bench:     321,310 ns/iter (+/- 5,208)
test optimal_unsafe_bench                          ... bench:      43,295 ns/iter (+/- 373)
test zip_chunks_exact_unknown_size_bench           ... bench:      43,298 ns/iter (+/- 482)
test zip_chunks_exact_unknown_size_slice_bench     ... bench:      43,292 ns/iter (+/- 270)
test zip_chunks_exact_unknown_size_take_bench      ... bench:     164,815 ns/iter (+/- 1,586)
test zip_chunks_exact_unknown_size_take_iter_bench ... bench:     164,836 ns/iter (+/- 3,528)
test zip_chunks_fixed_size_bench                   ... bench:      43,311 ns/iter (+/- 675)
test zip_chunks_fixed_size_take_bench              ... bench:      43,304 ns/iter (+/- 461)
test zip_chunks_fixed_size_take_iter_bench         ... bench:     134,447 ns/iter (+/- 3,983)
test zip_chunks_input_size_fixed_bench             ... bench:     401,656 ns/iter (+/- 3,133)
test zip_chunks_output_size_fixed_bench            ... bench:     428,752 ns/iter (+/- 54,821)
test zip_chunks_unknown_size_bench                 ... bench:     401,575 ns/iter (+/- 746)
test zip_chunks_unknown_size_take_bench            ... bench:     642,644 ns/iter (+/- 2,513)
test zip_chunks_unknown_size_take_iter_bench       ... bench:   1,070,907 ns/iter (+/- 2,755)

test result: ok. 0 passed; 0 failed; 0 ignored; 18 measured
```

### LLVM pass enabled for this crate

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no -C lto=off" cargo rustc --release --bench bench -- -Z remove-bc`

```
running 18 tests
test c_style_fixed_size_bench                      ... bench:     429,010 ns/iter (+/- 2,141)
test c_style_input_size_fixed_bench                ... bench:     428,992 ns/iter (+/- 2,388)
test c_style_output_size_fixed_bench               ... bench:     428,977 ns/iter (+/- 1,447)
test c_style_unknown_size_bench                    ... bench:     322,938 ns/iter (+/- 2,081)
test c_style_unknown_size_limit_bench              ... bench:     369,775 ns/iter (+/- 7,184)
test optimal_unsafe_bench                          ... bench:      44,193 ns/iter (+/- 500)
test zip_chunks_exact_unknown_size_bench           ... bench:     998,957 ns/iter (+/- 6,328)
test zip_chunks_exact_unknown_size_slice_bench     ... bench:     973,963 ns/iter (+/- 8,473)
test zip_chunks_exact_unknown_size_take_bench      ... bench:     981,738 ns/iter (+/- 5,257)
test zip_chunks_exact_unknown_size_take_iter_bench ... bench:   1,827,093 ns/iter (+/- 5,725)
test zip_chunks_fixed_size_bench                   ... bench:   1,290,455 ns/iter (+/- 20,794)
test zip_chunks_fixed_size_take_bench              ... bench:   1,224,583 ns/iter (+/- 11,578)
test zip_chunks_fixed_size_take_iter_bench         ... bench:   1,773,356 ns/iter (+/- 5,874)
test zip_chunks_input_size_fixed_bench             ... bench:   1,203,700 ns/iter (+/- 2,469)
test zip_chunks_output_size_fixed_bench            ... bench:   1,203,710 ns/iter (+/- 5,722)
test zip_chunks_unknown_size_bench                 ... bench:   1,210,475 ns/iter (+/- 23,127)
test zip_chunks_unknown_size_take_bench            ... bench:   1,100,122 ns/iter (+/- 6,213)
test zip_chunks_unknown_size_take_iter_bench       ... bench:   1,675,948 ns/iter (+/- 17,327)

test result: ok. 0 passed; 0 failed; 0 ignored; 18 measured
```

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no" cargo rustc --release --bench bench -- -Z remove-bc`

```
running 18 tests
test c_style_fixed_size_bench                      ... bench:      43,257 ns/iter (+/- 403)
test c_style_input_size_fixed_bench                ... bench:     321,543 ns/iter (+/- 20,773)
test c_style_output_size_fixed_bench               ... bench:     214,246 ns/iter (+/- 4,488)
test c_style_unknown_size_bench                    ... bench:     321,343 ns/iter (+/- 4,225)
test c_style_unknown_size_limit_bench              ... bench:     321,440 ns/iter (+/- 3,092)
test optimal_unsafe_bench                          ... bench:      43,224 ns/iter (+/- 360)
test zip_chunks_exact_unknown_size_bench           ... bench:      43,207 ns/iter (+/- 259)
test zip_chunks_exact_unknown_size_slice_bench     ... bench:      43,235 ns/iter (+/- 351)
test zip_chunks_exact_unknown_size_take_bench      ... bench:     164,800 ns/iter (+/- 2,414)
test zip_chunks_exact_unknown_size_take_iter_bench ... bench:     164,890 ns/iter (+/- 3,609)
test zip_chunks_fixed_size_bench                   ... bench:      43,234 ns/iter (+/- 184)
test zip_chunks_fixed_size_take_bench              ... bench:      43,240 ns/iter (+/- 604)
test zip_chunks_fixed_size_take_iter_bench         ... bench:     134,471 ns/iter (+/- 547)
test zip_chunks_input_size_fixed_bench             ... bench:     401,782 ns/iter (+/- 2,034)
test zip_chunks_output_size_fixed_bench            ... bench:     428,495 ns/iter (+/- 20,575)
test zip_chunks_unknown_size_bench                 ... bench:     401,791 ns/iter (+/- 5,313)
test zip_chunks_unknown_size_take_bench            ... bench:     642,711 ns/iter (+/- 1,840)
test zip_chunks_unknown_size_take_iter_bench       ... bench:   1,070,790 ns/iter (+/- 2,845)

test result: ok. 0 passed; 0 failed; 0 ignored; 18 measured
```

### LLVM pass enabled in RUSTFLAGS

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no -C lto=off -Z remove-bc" cargo rustc --release --bench bench`

```
running 18 tests
test c_style_fixed_size_bench                      ... bench:      44,139 ns/iter (+/- 126)
test c_style_input_size_fixed_bench                ... bench:      44,050 ns/iter (+/- 128)
test c_style_output_size_fixed_bench               ... bench:      44,205 ns/iter (+/- 536)
test c_style_unknown_size_bench                    ... bench:      44,471 ns/iter (+/- 163)
test c_style_unknown_size_limit_bench              ... bench:      44,183 ns/iter (+/- 132)
test optimal_unsafe_bench                          ... bench:      43,870 ns/iter (+/- 420)
test zip_chunks_exact_unknown_size_bench           ... bench:     961,987 ns/iter (+/- 2,970)
test zip_chunks_exact_unknown_size_slice_bench     ... bench:     953,173 ns/iter (+/- 25,009)
test zip_chunks_exact_unknown_size_take_bench      ... bench:   1,065,523 ns/iter (+/- 6,716)
test zip_chunks_exact_unknown_size_take_iter_bench ... bench:   1,530,719 ns/iter (+/- 9,854)
test zip_chunks_fixed_size_bench                   ... bench:   1,040,389 ns/iter (+/- 13,467)
test zip_chunks_fixed_size_take_bench              ... bench:   1,009,922 ns/iter (+/- 38,961)
test zip_chunks_fixed_size_take_iter_bench         ... bench:   1,829,906 ns/iter (+/- 10,064)
test zip_chunks_input_size_fixed_bench             ... bench:   1,004,487 ns/iter (+/- 9,469)
test zip_chunks_output_size_fixed_bench            ... bench:   1,038,910 ns/iter (+/- 14,934)
test zip_chunks_unknown_size_bench                 ... bench:   1,100,043 ns/iter (+/- 10,976)
test zip_chunks_unknown_size_take_bench            ... bench:   1,267,594 ns/iter (+/- 5,706)
test zip_chunks_unknown_size_take_iter_bench       ... bench:   1,931,630 ns/iter (+/- 15,691)

test result: ok. 0 passed; 0 failed; 0 ignored; 18 measured
```

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no -Z remove-bc" cargo rustc --release --bench bench`

```
running 18 tests
test c_style_fixed_size_bench                      ... bench:      42,819 ns/iter (+/- 207)
test c_style_input_size_fixed_bench                ... bench:      42,882 ns/iter (+/- 361)
test c_style_output_size_fixed_bench               ... bench:      43,262 ns/iter (+/- 189)
test c_style_unknown_size_bench                    ... bench:      43,289 ns/iter (+/- 343)
test c_style_unknown_size_limit_bench              ... bench:      43,129 ns/iter (+/- 556)
test optimal_unsafe_bench                          ... bench:      42,797 ns/iter (+/- 576)
test zip_chunks_exact_unknown_size_bench           ... bench:      42,843 ns/iter (+/- 289)
test zip_chunks_exact_unknown_size_slice_bench     ... bench:      42,887 ns/iter (+/- 550)
test zip_chunks_exact_unknown_size_take_bench      ... bench:     164,826 ns/iter (+/- 902)
test zip_chunks_exact_unknown_size_take_iter_bench ... bench:     164,901 ns/iter (+/- 3,602)
test zip_chunks_fixed_size_bench                   ... bench:      43,037 ns/iter (+/- 379)
test zip_chunks_fixed_size_take_bench              ... bench:      43,033 ns/iter (+/- 621)
test zip_chunks_fixed_size_take_iter_bench         ... bench:     134,638 ns/iter (+/- 441)
test zip_chunks_input_size_fixed_bench             ... bench:      43,240 ns/iter (+/- 633)
test zip_chunks_output_size_fixed_bench            ... bench:      43,238 ns/iter (+/- 184)
test zip_chunks_unknown_size_bench                 ... bench:      42,789 ns/iter (+/- 556)
test zip_chunks_unknown_size_take_bench            ... bench:     164,700 ns/iter (+/- 642)
test zip_chunks_unknown_size_take_iter_bench       ... bench:   1,071,661 ns/iter (+/- 5,220)

test result: ok. 0 passed; 0 failed; 0 ignored; 18 measured
```

