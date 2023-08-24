;计算0123h,0456h,0789h,0abch,0defh,0fedh,0cbah,0987h的和，结果保存在ax中
;ax:4bdbh
assume cs:code
code segment
    
    dw 0123h,0456h,0789h,0abch,0defh,0fedh,0cbah,0987h  ;定义字型数据,数据在代码段的最开始,大小16字节
start:  mov bx,0
        mov ax,0

        mov cx,8
    s:  add ax,cs:[bx]
        add bx,2
        loop s

        mov ax,4c00h
        int 21h
code ends
end start
; end的作用：
; 1.通知编译器程序结束；
; 2.通知编译器的入口；