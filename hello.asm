default rel 
global _start
section .text

_start: 
  ; first call
  mov rax, 0x2000004 
  mov rdi, 1
  lea rsi, [msg]
  mov rdx, len
  syscall
  
  ; sec call
  mov rax, 0x2000004 
  mov rdi, 1
  lea rsi, [msg_sec]
  mov rdx, len_sec
  syscall
  
  ; exit 0
  mov rax, 0x2000001 
  mov rdi, 0
  syscall

section .rodata
  ; first string
  msg: db "hello world #1", 0xa
  len: equ $ - msg
  
  ; sec string
  msg_sec: db "hello world #2", 0xa
  len_sec: equ $ - msg_sec
