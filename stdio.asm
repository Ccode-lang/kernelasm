bits 32
section .text
global print

print:
  pop edx ; bit to print
  pop eax ; place to print
  
  add eax, vidptr ; find memory address to print to
  mov [eax], edx ; put given byte at address
  
  add eax, 1 ; find coloring byte
  mov ecx, 0x07
  mov [eax], ecx ; set character color grey
  
  ret



section .data
  vidptr: dd 0xb8000
