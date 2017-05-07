# SVF
* Forked from https://github.com/unsw-corg/SVF
* Ported to work with LLVM 3.4
* Additional changes for the KLEE/Slicing project
## Build
```
git checkout llvm-3.4
export LLVM_SRC=<LLVM_SRC_DIR>
export LLVM_OBJ=<LLVM_OBJ_DIR> (autoconf)
export PATH=$LLVM_OBJ/Release+Asserts/bin:$PATH
rm -rf Makefile.common && rm -rf configure
```

Edit autoconf/configure.ac:
* change value of LLVM\_SRC\_ROOT to $LLVM\_SRC
* change value of LLVM\_OBJ\_ROOT to $LLVM\_OBJ

```
./autoconf/AutoRegen.sh
./configure
make CFLAGS=-m32 CXXFLAGS="-m32 -std=gnu++11"
```
