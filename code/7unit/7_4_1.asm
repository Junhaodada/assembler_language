assume cs:codesg,ds:datasg
datasg segment
    db 'welcome to masm!';16位
    db '................'
datasg ends
codesg segment
start:  mov ax,datasg
        mov ds,ax
        mov si,0    ;用ds:si指向要复制的字符串
        mov di,16   ;用ds:di指向复制的目的空间
        mov cx,8
    s:  mov ax,[si] ;用16位寄存器进行内存单元的数据传送，一次复制2个字节，共复制8次
        mov [di],ax
        add si,2
        add di,2
        loop s
        mov ax,4c00h
        int 21h
codesg ends
end start