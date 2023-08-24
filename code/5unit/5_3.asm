;将ffff:0006中的数据存入dx中
assume cs:code
code segment
    mov ax,0ffffh   ;汇编源程序中，数据不能以字母开头
    mov ds,ax
    mov bx,6    ;ffff:0006

    mov al,[bx]
    mov ah,0    ;将内存单元中的数据，存入ax中

    mov dx,0
    mov cx,3
s:  add dx,ax
    loop s  ;累加
    mov ax,4c00h
    int 21h
code ends
end