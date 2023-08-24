assume cs:codesg,ds:datasg
datasg segment
    db 'BaSiC'  ;转小写
    db 'iNfOrMaTiOn'    ;转大写
datasg ends
codesg segment
start:  mov ax,datasg
        mov ds,ax
        mov bx,0
        mov cx,5
    s:  mov al,[bx]
        ; 如果(al)>61H,则为小写字母的ASCII码，则：sub al，20H
        and al,11011111b    ;小写变大写
        mov [bx],al
        inc bx
        loop s  

        mov bx,5
        mov cx,11
    s0:  mov al,[bx]
        or al,00100000b
        mov [bx],al
        inc bx
        loop s0

        mov ax,4c00h
        int 21h
codesg ends
end start