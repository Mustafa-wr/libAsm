
section .text
    global ft_strdup
    extern malloc   
    extern ft_strlen
    extern ft_strcpy

ft_strdup:
    push rdi
    call ft_strlen wrt ..plt
    inc rax

    mov rdi, rax
    call malloc wrt ..plt

    cmp rax, 0
    jz .error

    mov r12, rax ; save malloc pointer

    pop rsi ; restore the original src pointer to do strcpy
    call ft_strcpy wrt ..plt 

    mov rax, r12 ; returned malloc ponter
    ret

.error:
    pop rdi
    mov rax, 0
    ret