all: bin

bin: src/lib.rs
	cargo build --release

llvm: src/lib.rs
	cargo rustc --release -- --emit=llvm-ir

.PHONY = clean
clean:
	cargo clean
