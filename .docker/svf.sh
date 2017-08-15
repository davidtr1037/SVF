#!/bin/bash -x
# Make sure we exit if there is a failure
set -e

cd ${BUILD_DIR}
mkdir build-svf
cd build-svf
cmake \
    -DLLVM_SRC=${BUILD_DIR}/llvm-3.4.2.src \
    -DLLVM_OBJ=${BUILD_DIR}/llvm-3.4.2-build \
    -DLLVM_DIR=${BUILD_DIR}/llvm-3.4.2/share/llvm/cmake/ \
    ${SRC_DIR}/SVF
make
