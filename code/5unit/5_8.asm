;将内存ffff:0~ffff:b单元中的数据复制到0:200~0:20b单元中
;ffff:0 ~ffff:b单元的数据：EA C0 12 00 F0 30 31 2F 30 31 2F 39
;0020:0 ~0020:b单元的数据：EA C0 12 00 F0 30 31 2F 30 31 2F 39
assume cs:code
code segment
    mov cx,12   
    mov bx,0

s:  mov ax,0ffffh
    mov ds,ax
    
    mov dl,[bx]
    mov ax,0020h
    mov ds,ax
    mov [bx],dl

    inc bx
    loop s
    
    mov ax,4c00h
    int 21h
code ends
end


    