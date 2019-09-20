rm -rf build
mkdir build
cd build
cmake                                                                                     \
../llvm                                                                                   \
-G Ninja                                                                                  \
-DLLVM_TOOL_COMPILER_RT_BUILD=ON                                                          \
-DCMAKE_EXPORT_COMPILE_COMMANDS=YES -DCMAKE_CXX_STANDARD=17                               \
-DLLVM_TOOL_CLANG_BUILD=ON                                                                \
-DCMAKE_BUILD_TYPE=Release                                                                \
-DCMAKE_C_COMPILER=/cvmfs/lhcb.cern.ch/lib/bin/x86_64-centos7/lcg-gcc-8.2.0               \
-DCMAKE_CXX_COMPILER=/cvmfs/lhcb.cern.ch/lib/bin/x86_64-centos7/lcg-g++-8.2.0             \
-DCMAKE_CXX_COMPILER_LAUNCHER=/home/pseyfert/cern/lb-stack-setup/contrib/bin/distcc       \
-DCMAKE_CXX_FLAGS=-fdiagnostics-color\ -march=sandybridge\ -O3\ -Wextra\ -Wall            \
-DCMAKE_INSTALL_PREFIX=/home/pseyfert/coding/llvm-install                                 \
-DLLVM_CXX_STD=c++17                                                                      \
-DCLANG_BUILD_TOOLS=ON                                                                    \
-DLLVM_BINUTILS_INCDIR=/usr/include                                                       \
-DLLVM_ENABLE_PROJECTS='clang;clang-tools-extra;compiler-rt'



#-DLLVM_EXTERNAL_PROJECTS=clang-tools-extra \

echo LLVM_ENABLE_PROJECTS='clang;clang-tools-extra;compiler-rt'
