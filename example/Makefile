BIN_LOC="./target/release/libexample.dylib"

all: bin

bin: src/lib.rs
	cargo build --release

llvm: src/lib.rs
	cargo rustc --release -- --emit=llvm-ir

print: src/lib.rs
	cargo rustc -- -Zunstable-options --pretty=expanded

objdump: bin
	objdump -D ${BIN_LOC} > $@

.PHONY = clean
clean:
	cargo clean && rm objdump
