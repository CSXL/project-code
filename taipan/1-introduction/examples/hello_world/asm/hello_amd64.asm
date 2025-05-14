; hello_amd64.asm
;
; A "Hello, World!" program for AMD64 architecture,
; using 64-bit Linux system calls.

SECTION .data       ; Section for initialized data
    hello_string db "Hello, World!", 0Ah  ; The string, 0Ah is newline
    hello_len equ $ - hello_string        ; Calculate length of the string

SECTION .text       ; Section for executable code
    GLOBAL _start   ; Make _start symbol visible to the linker

_start:
    ; sys_write system call
    mov rax, 1          ; syscall number for sys_write
    mov rdi, 1          ; file descriptor 1 (stdout)
    mov rsi, hello_string ; pointer to the string to write
    mov rdx, hello_len  ; number of bytes to write
    syscall             ; make the system call

    ; sys_exit system call
    mov rax, 60         ; syscall number for sys_exit
    mov rdi, 0          ; exit code 0 (success)
    syscall             ; make the system call
