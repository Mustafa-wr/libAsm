; rax = 64 bits (8 bytes)
; eax = 32 bits (4 bytes)
; ax  = 16 bits (2 bytes)
; al  =  8 bits (1 byte)
section .text
    global ft_read
    extern __errno_location

ft_read:
    mov rax, 0
    syscall

    test rax, rax
    js .error

    ret

.error:
    neg rax
    mov rdi, rax

    call __errno_location wrt ..plt  ; With Respect To | Procedure Linkage Table
    mov [rax], rdi
    mov rax, -1
    ret