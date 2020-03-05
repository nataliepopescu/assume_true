all: bin

bin: src/main.rs
	cargo build --release

llvm: src/main.rs
	cargo rustc --release -- --emit=llvm-ir

print: src/main.rs
	cargo rustc -- -Zunstable-options --pretty=expanded

symbols: target/release/iterator_bench
	nm --print-size --numeric-sort $< > $@

.PHONY = clean
clean:
	cargo clean
