default rel

section .data
    val3: dq 3
    val2: dq 99
    val1: dq 123
    format: db "(123 + 99) * 3 = %d <− should be 666",10,0

section .text
    global _start
    extern _printf

_start:
    lea rdi, [format]
    mov rax, [val1]
    add rax, [val2]
    mov rdx, [val3]
    imul rax, rdx
    mov rsi, rax
    mov rax, 0 
    call _printf
    
    mov rax, 0x2000001 
    mov rdi, 0
    syscall
