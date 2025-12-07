; rax = 64 bits (8 bytes)
; eax = 32 bits (4 bytes)
; ax  = 16 bits (2 bytes)
; al  =  8 bits (1 byte)

section .text
    global ft_strcmp

ft_strcmp:
    mov rcx, 0                ; rcx = 0 (use rcx as index instead of rax!)

.loop:
    mov al, BYTE [rdi + rcx]    ; al = s1[index]
    mov bl, BYTE [rsi + rcx]    ; bl = s2[index]
    cmp al, bl
    jne .different

    cmp al, 0                 ; Check for null (shorter)
    jz .equal

    inc rcx                     ; Increment index
    jmp .loop


.different:
    movzx rax, al              ; Zero-extend al to rax 
    movzx rbx, bl              ; Zero-extend bl to rbx
    sub rax, rbx               ; rax = rax - rbx
    ret

.equal:
    mov rax, 0
    ret