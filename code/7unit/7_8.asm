; 将每一个单词的头一个字母改成大写字母
assume cs:codesg,ds:datasg
datasg segment
    db 'ibm             '
    db 'dec             '
    db 'dos             '
    db 'vax             '
    dw 0
datasg ends
codesg segment
start:  mov ax,datasg
        mov ds,ax
        mov bx,0
        mov cx,4    ;设置外层循环计数值
    s:  mov ds:[40h],cx
        mov si,0
        mov cx,3    ;内层循环的次数
    s0: mov al,[bx+si]
        and al,11011111b
        mov [bx+si],al
        inc si
        loop s0
        add bx,16
        mov cx,ds:[40h]   ;用datasg:40h单元的值恢复cx
        loop s
        mov ax,4c00h
        int 21h
codesg ends
end start