section .data
array dw 10, 20, 30, 40, 50
arraySize equ ($-array)/2 ; Calculate array size in words

section .bss
result resw 1

section .text
  global _start

_start:
  ; Correct way to access array elements using indexing.  Note the size check.
  mov ecx, 2 ; Array index (valid index check needed in real application)
  cmp ecx, arraySize
  jge error_handler ;Handle out of bounds
  mov eax, array
  add eax, ecx ; Add index * element size. Element size is 2 bytes in this case.
  add eax, ecx ; to account for word (2 bytes) size
  mov bx, [eax]
  mov [result], bx
  jmp exit

error_handler:
  ; Handle out-of-bounds error (e.g., exit with an error code)
  mov eax, 1 ; sys_exit
  mov ebx, 1 ; exit code 1 indicates error
  int 0x80

exit:
  mov eax, 1 ; sys_exit
  xor ebx, ebx ; exit code 0
  int 0x80