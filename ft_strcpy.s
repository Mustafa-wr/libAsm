; rax = 64 bits (8 bytes)
; eax = 32 bits (4 bytes)
; ax  = 16 bits (2 bytes)
; al  =  8 bits (1 byte)

section .text
    global ft_strcpy

ft_strcpy:
    mov rax, rdi
    mov rcx, 0

    .loop:
        mov al, BYTE [rsi + rcx]
        mov BYTE [rdi + rcx], al

        cmp al, 0
        je .done
        inc rcx
        
        jmp .loop

.done:
    ret
