default rel

section .data
    val: dq 123
    format: db "This number −> %d <− should be 123",10,0

section .text
    global _start
    extern _printf

_start:
    lea rdi, [format]
    mov rsi, [val]
    mov rax, 0 
    call _printf
    
    mov rax, 0x2000001 
    mov rdi, 0
    syscall
