;将程序中定义的数据逆置
assume cs:code
code segment
    dw 0123h,0456h,0789h,0abch,0defh,0fedh,0cbah,0987h  ;定义字型数据,数据在代码段的最开始,大小16字节
    dw 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0  ;为什么一定呀开辟32字节的内存空间？
start:  mov ax,cs
        mov ss,ax
        mov sp,30h

        mov bx,0
        mov cx,8
    s:  push cs:[bx]
        add bx,2
        loop s

        mov bx,0
        mov cx,8
    s0: pop cs:[bx]
        add bx,2
        loop s0

        mov ax,4c00h
        int 21h
code ends
end start