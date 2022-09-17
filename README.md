Wyvra
=====

A Framework with tools for Multiarchitecture Instruction Set Randomization (ISR).

Architectural Support
=====================
In theory, the overlap between LLVM compiler backends and QEMU TCG,
disassembler frontends is supported. The most commonly known are 
x86-64, ARMv8, RISC V, SPARCv8, MIPS. Rumours say this also works 
for High Level Synthesis of Hardware Description Languages for FPGA.

Testing
=======
So far, x86_64 linux user mode is tested under ISR. We will acquire an ARMv8 server
for testing soon. Others to follow.

Python
======
We incorporate Nuitka Python 3.10 compiler with clang and an LLVM ISR backend.

