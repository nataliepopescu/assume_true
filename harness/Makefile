all: bin

bin: src/lib.rs
	cargo build --release

llvm: src/lib.rs
	cargo rustc --release -- --emit=llvm-ir

print: src/lib.rs
	cargo rustc -- -Zunstable-options --pretty=expanded

symbols: target/release/libharness.dylib
	nm --print-size --numeric-sort $< > $@

.PHONY = clean
clean:
	cargo clean
