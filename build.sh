#!/usr/bin/fish

rm -rf build/
mkdir build
cd build
cmake ../src -DCMAKE_C_FLAGS="-Wno-incompatible-pointer-types" -DCMAKE_CXX_FLAGS="-Wno-incompatible-pointer-types" -DCMAKE_POLICY_VERSION_MINIMUM=3.5
make
