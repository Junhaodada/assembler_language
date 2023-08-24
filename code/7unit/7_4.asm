assume cs:codesg,ds:datasg
datasg segment
    db 'welcome to masm!';16位
    db '................'
datasg ends
codesg segment
start:  mov ax,datasg
        mov ds,ax
        mov bx,0
        mov cx,8
    s:  mov ax,[bx]
        mov [bx+16],ax
        ; inc bx
        add bx,2
        loop s
        mov ax,4c00h
        int 21h
codesg ends
end start