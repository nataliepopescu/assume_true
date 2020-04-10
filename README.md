# Playground for Rust Attribute Macros

## Repo Structure

`example/` contains a few simple, motivating examples of Rust code and their generated 
assembly code, and is meant to be kept clean.

`harness/` contains more experimental code examples.

`iterator_bench/` extends the [iterator_bench](https://github.com/alevy/iterator_bench) repo 
with usage of our custom attribute macro. The cargo commands used in that repo
(`cargo bench` and `cargo test`) similarly work in this folder. 

`macro_def/` contains the macro implementation. The macro rewrites a function at compile
time by wrapping the originl function body in an unreachable() block, signifying to the 
compiler that the condition it relies on will never be false. This allows the compiler to
assume the condition is always true and it optimizes away the unreachable() call. 
If you are curious as to what such rewritten code looks like, run `make print` in the 
`example/` directory. 
