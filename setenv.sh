# the path where you downloaded the source code
LLVM=~/nosync/llvm
LIBOMP=~/nosync/libomp_oss

# make sure you build with the release flag
# ./configure --enable-optimized

CLANG_BIN=$LLVM/Release+Asserts/bin
CLANG_INCLUDE=$LLVM/include
CLANG_LIB=$LLVM/Release+Asserts/lib

OPENMP_INCLUDE=$LIBOMP/exports/common/include
OPENMP_LIB=$LIBOMP/exports/mac_32e/lib.thin

export PATH=$CLANG_BIN:$PATH
export C_INCLUDE_PATH=$CLANG_INCLUDE:$OPENMP_INCLUDE:$C_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=$CLANG_INCLUDE:$OPENMP_INCLUDE:$C_INCLUDE_PATH
export LIBRARY_PATH=$CLANG_LIB:$OPENMP_LIB:$LIBRARY_PATH
export DYLD_LIBRARY_PATH=$CLANG_LIB:$OPENMP_LIB:$DYLD_LIBRARY_PATH

