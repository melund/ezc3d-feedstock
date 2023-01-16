#!/bin/bash
mkdir build
cd build

cmake ../ \
    -GNinja \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    -DBUILD_EXAMPLE=OFF \
    -DBINDER_MATLAB=OFF \
    -DBINDER_PYTHON3=ON \
    -DOctave_ezc3d_INSTALL_DIR=$PREFIX/Octave \
    -DPython3_EXECUTABLE=$PREFIX/bin/python

ninja install
