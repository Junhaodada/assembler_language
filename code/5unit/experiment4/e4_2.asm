;(1)向内存0:200~0:023f依次传送数据0~63(3fh),9条指令
assume cs:code
code segment
    mov ax,0020h
    mov ds,ax

    mov bx,0
    mov cx,64
s:  mov [bx],bx
    inc bx
    loop s

    mov ax,4c00h
    int 21h
code ends
end