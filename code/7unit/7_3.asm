assume cs:codesg,ds:datasg
datasg segment
    db 'BaSiC'
    db 'MinIX'
datasg ends
codesg segment
start:  mov ax,datasg
        mov ds,datasg
        mov bx,0
        mov cx,5
    s:  mov al,[bx]
        add al,11011111b
        mov [bx],al

        mov al,[bx+5]
        mov al,5[bx]
        or al,00100000b
        mov [bx+5],al
        loop s
        mov ax,4c00h
        int 21h
codesg ends
end start

