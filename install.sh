#!/bin/bash

export WYVRA_LLVM_SOURCE_URL="https://github.com/llvm/llvm-project/archive/refs/tags/llvmorg-14.0.6.tar.gz";
export WYVRA_HQEMU_SOURCE_URL="http://csl.iis.sinica.edu.tw/hqemu/download.php?v=2.5.2";
export WYVRA_NUITKA_SOURCE_URL="https://github.com/Nuitka/Nuitka/archive/refs/heads/develop.zip";
export WYVRA_LLVM_TARGET_FILE="llvm.tar.gz";
export WYVRA_HQEMU_TARGET_FILE="hqemu.tar.gz";
export WYVRA_NUITKA_TARGET_FILE="nuitka.zip";

# Let's get this thing going
clear;
cat config/motd;

# Get LLVM 14.0.6 and clang
if test -f "tmp/$WYVRA_LLVM_TARGET_FILE"; then
    echo "LLVM source download seems to exist.";
else
    wget -O tmp/$WYVRA_LLVM_TARGET_FILE $WYVRA_LLVM_SOURCE_URL;
    tar -xf tmp/$WYVRA_LLVM_TARGET_FILE;
    mv llvm-project-llvmorg-14.0.6 framework/llvm;
fi

# Get HQEMU 2.5.2
if test -f "tmp/$WYVRA_HQEMU_TARGET_FILE"; then
    echo "HQEMU source download seems to exist.";
else
    wget -O tmp/$WYVRA_HQEMU_TARGET_FILE $WYVRA_HQEMU_SOURCE_URL;
    tar -xf tmp/$WYVRA_HQEMU_TARGET_FILE;
    mv hqemu-2.5.2 framework/hqemu;
fi

# Get Nuitka
if test -f "tmp/$WYVRA_NUITKA_TARGET_FILE"; then
    echo "Nuitka source download seems to exist.";
else
    wget -O tmp/$WYVRA_NUITKA_TARGET_FILE $WYVRA_NUITKA_SOURCE_URL;
    unzip tmp/$WYVRA_NUITKA_TARGET_FILE;
    mv Nuitka-develop framework/nuitka;
fi

# Add ISR backend and patch files in LLVM+clang

#
#   This is work. Do it. 
#

# Add ISR backend and patch files in HQEMU

#
#   This is work. Do it.
#

# Add ISRand patch files in Nuitka

#
#   This is work. Do it.
#

# Fuck off
echo "Fuck off!";
echo "";
