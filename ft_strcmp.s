section .text
    global ft_strcmp

ft_strcmp:
    mov rax, 0                  ; index = 0

.loop:
    mov al, BYTE [rdi + rax]  ; al = s1[0]
    mov bl, BYTE [rsi + rax]  ; bl = s2[0]
    cmp al, bl
    jne .different

    cmp al, 0
    je .equal

    inc rax
    jmp .loop

.different:
    ; TODO: Calculate return value (al - bl) into rax
    movzx rax, al              ; Zero-extend al to rax
    movzx rbx, bl              ; Zero-extend bl to rbx
    sub rax, rbx               ; rax = rax - rbx
    ret

.equal:
    mov rax, 0
    ret