# SVF
* Forked from https://github.com/unsw-corg/SVF
* Ported to work with LLVM 3.4
* Additional changes for the KLEE/Slicing project

## Build (CMake)
```
git checkout llvm-3.4
mkdir build
cmake \
    -DLLVM_DIR=<LLVM_BUILD_DIR>/share/llvm/cmake/ \
    -DLLVM_SRC=<LLVM_SRC_DIR> \
    -DLLVM_OBJ=<LLVM_BUILD_DIR> \
    -DCMAKE_BUILD_TYPE:STRING=Release \
    ..
make
```
