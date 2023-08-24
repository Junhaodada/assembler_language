;ffff:0 ~ffff:b单元的数据：EA C0 12 00 F0 30 31 2F 30 31 2F 39
;和为：dx:0405h
assume cs:code
code segment
    mov ax,0ffffh
    mov ds,ax
    mov bx,0
    mov dx,0
    mov cx,12

s:  mov al,[bx]
    mov ah,0
    add dx,ax
    inc bx
    loop s

    mov ax,4c00h
    int 21h
code ends
end