; file_copy.asm
; Copies a source file to a destination file.
; For 64-bit Linux using NASM.

; Syscall numbers
%define SYS_READ  0
%define SYS_WRITE 1
%define SYS_OPEN  2
%define SYS_CLOSE 3
%define SYS_EXIT  60

; File open flags
%define O_RDONLY  0
%define O_WRONLY  1
%define O_CREAT   0100o ; 0x40
%define O_TRUNC   01000o; 0x200

; File permissions for new file (rw-r--r--)
%define MODE_RW_R_R 0644o
%define BUFFER_SIZE 4096

SECTION .data
    source_filename db "source.txt", 0   ; Null-terminated source filename
    dest_filename   db "destination.txt", 0 ; Null-terminated destination filename
    error_open_source db "Error opening source file.", 0Ah, 0
    len_error_open_source equ $ - error_open_source
    error_open_dest   db "Error opening destination file.", 0Ah, 0
    len_error_open_dest   equ $ - error_open_dest
    error_read        db "Error reading from source file.", 0Ah, 0
    len_error_read        equ $ - error_read
    error_write       db "Error writing to destination file.", 0Ah, 0
    len_error_write       equ $ - error_write

SECTION .bss
    buffer resb BUFFER_SIZE             ; Reserve BUFFER_SIZE bytes for our buffer

SECTION .text
    GLOBAL _start

_start:
    ; --- Open source file (read-only) ---
    mov rax, SYS_OPEN
    mov rdi, source_filename
    mov rsi, O_RDONLY
    ; rdx (mode) is not strictly needed for O_RDONLY but can be 0
    mov rdx, 0
    syscall
    ; RAX now contains the file descriptor for source, or error code

    cmp rax, 0          ; Check if RAX < 0 (error)
    jl _error_open_source_handler ; Jump if less (error)
    mov r12, rax        ; Save source file descriptor in R12 (callee-saved)

    ; --- Open/Create destination file (write-only, create, truncate) ---
    mov rax, SYS_OPEN
    mov rdi, dest_filename
    mov rsi, O_WRONLY | O_CREAT | O_TRUNC
    mov rdx, MODE_RW_R_R ; Permissions if creating
    syscall
    ; RAX now contains the file descriptor for destination, or error code

    cmp rax, 0          ; Check if RAX < 0 (error)
    jl _error_open_dest_handler ; Jump if less (error)
    mov r13, rax        ; Save destination file descriptor in R13 (callee-saved)

_read_write_loop:
    ; --- Read from source file ---
    mov rax, SYS_READ
    mov rdi, r12        ; Source file descriptor (from R12)
    mov rsi, buffer     ; Pointer to our buffer
    mov rdx, BUFFER_SIZE; Number of bytes to read
    syscall
    ; RAX contains number of bytes read, 0 for EOF, or negative for error

    cmp rax, 0          ; Check for error or EOF
    jl _error_read_handler  ; If rax < 0, it's an error
    je _close_files     ; If rax == 0, it's End Of File, so close files

    ; RAX now holds bytes_read, which is > 0
    mov r14, rax        ; Save bytes_read in R14

    ; --- Write to destination file ---
    mov rax, SYS_WRITE
    mov rdi, r13        ; Destination file descriptor (from R13)
    mov rsi, buffer     ; Pointer to our buffer
    mov rdx, r14        ; Number of bytes to write (from R14)
    syscall
    ; RAX contains number of bytes written, or negative for error

    cmp rax, 0          ; Check for error
    jl _error_write_handler ; If rax < 0, it's an error
    ; TODO: Could add a check here if rax (bytes written) != r14 (bytes read)

    jmp _read_write_loop ; Go back to read next chunk

_close_files:
    ; --- Close destination file ---
    mov rax, SYS_CLOSE
    mov rdi, r13        ; Destination file descriptor
    syscall
    ; TODO: Check RAX for close error if desired

    ; --- Close source file ---
    mov rax, SYS_CLOSE
    mov rdi, r12        ; Source file descriptor
    syscall
    ; TODO: Check RAX for close error if desired

    jmp _exit_success

_error_open_source_handler:
    mov rdi, 1 ; stdout
    mov rsi, error_open_source
    mov rdx, len_error_open_source
    jmp _print_error_and_exit

_error_open_dest_handler:
    ; Attempt to close source file if it was opened
    cmp r12, 0  ; Check if r12 (source_fd) is valid (not strictly necessary here as it would have failed before)
    jl _skip_close_source_dest_error
    mov rax, SYS_CLOSE
    mov rdi, r12
    syscall
_skip_close_source_dest_error:
    mov rdi, 1 ; stdout
    mov rsi, error_open_dest
    mov rdx, len_error_open_dest
    jmp _print_error_and_exit

_error_read_handler:
    mov rdi, 1 ; stdout
    mov rsi, error_read
    mov rdx, len_error_read
    jmp _close_and_print_error

_error_write_handler:
    mov rdi, 1 ; stdout
    mov rsi, error_write
    mov rdx, len_error_write
    ; Fall through to close files and then print error

_close_and_print_error:
    ; Attempt to close destination file
    cmp r13, 0
    jl _skip_close_dest_on_rw_error
    mov rax, SYS_CLOSE
    mov rdi, r13
    syscall
_skip_close_dest_on_rw_error:
    ; Attempt to close source file
    cmp r12, 0
    jl _skip_close_source_on_rw_error
    mov rax, SYS_CLOSE
    mov rdi, r12
    syscall
_skip_close_source_on_rw_error:
    ; Now jump to print the error message that was set up in RSI, RDX
    ; RDI is already 1 for stdout.

_print_error_and_exit:
    mov rax, SYS_WRITE  ; print the error message
    syscall
    jmp _exit_failure

_exit_success:
    mov rax, SYS_EXIT
    mov rdi, 0          ; Exit code 0 (success)
    syscall

_exit_failure:
    mov rax, SYS_EXIT
    mov rdi, 1          ; Exit code 1 (general error)
    syscall
