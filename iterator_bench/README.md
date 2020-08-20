# Testing our techniques

Tested on code from this repo: [iterator_bench](https://github.com/alevy/iterator_bench).

Access the linked repository for the original benchmarks. We unfold the original
implementation for easier analysis at the LLVM IR level. 

## Technique 1

### rustc nightly-2020-07-05 (baseline)

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no -C lto=off" cargo bench --release --bench bench`

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no" cargo bench --release --bench bench`

### MIR modification

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no -C lto=off" cargo bench --release --bench bench`

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no" cargo bench --release --bench bench`

## Technique 2

### LLVM pass disabled (baseline)

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no -C lto=off" cargo bench --release --bench bench`

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no" cargo bench --release --bench bench`

### LLVM pass enabled

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no -C lto=off" cargo bench --release --bench bench -- -Z remove-bc`

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no" cargo bench --release --bench bench -- -Z remove-bc`

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no -C lto=off -Z remove-bc" cargo bench --release --bench bench`

`RUSTFLAGS="-C opt-level=3 -C debuginfo=2 -C embed-bitcode=no -Z remove-bc" cargo bench --release --bench bench`

