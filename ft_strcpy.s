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


; Mark stack as non-executable (security feature)
section .note.GNU-stack noalloc noexec nowrite progbits