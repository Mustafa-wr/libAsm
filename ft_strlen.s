section .text
    global ft_strlen

ft_strlen:
    mov rax, 0

.loop:
    cmp BYTE [rdi + rax], 0
    je .done

    inc rax
    jmp .loop

.done:
    ret

; Mark stack as non-executable (security feature)
section .note.GNU-stack noalloc noexec nowrite progbits