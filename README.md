# Assembly Memory Access Violation Bug

This repository demonstrates a common bug in assembly programming related to memory access violations.  The bug occurs due to incorrect pointer arithmetic, leading to attempts to access memory outside the allocated address space.

## Bug Description
The `bug.asm` file contains assembly code that attempts to access an array element using incorrect pointer arithmetic. This results in a segmentation fault or memory access violation during execution.

## Bug Solution
The `bugSolution.asm` file provides a corrected version of the code, demonstrating how to fix the pointer arithmetic to access memory correctly.  It includes boundary checks to prevent out-of-bounds access.

## How to reproduce:
1. Assemble the `bug.asm` file using your preferred assembler (e.g., NASM).
2. Run the resulting executable. You should observe a segmentation fault or memory access violation.
3. Assemble `bugSolution.asm` and run; this version should execute correctly.

## Lessons Learned
This example highlights the importance of careful pointer arithmetic and memory management in assembly programming.  Always validate your pointers and array indices to prevent memory access violations. Employ range checks or bounds checks whenever dealing with array accesses.  Understanding memory alignment is crucial to avoid segmentation faults. 