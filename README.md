# Playground for Rust Attribute Macros

From inside /harness directory, run `make` to build a .so file or `make llvm` to generate llvm-ir. 

The output shows how the attribute macro (defined in /macro_def) is used to 
re-write a function at a compile time. The newly rewritten function can 
then be used normally at runtime. 
