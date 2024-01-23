#!/bin/sh -eux

export CC="$HOME/riscv/rv32/bin/riscv32-unknown-linux-gnu-gcc"
export CXX="$HOME/riscv/rv32/bin/riscv32-unknown-linux-gnu-g++"

./configure --prefix=$PWD/install
make -j$(nproc)
make install
