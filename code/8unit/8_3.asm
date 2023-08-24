assume cs:codesg
data segment
    ;年份
    db '1975', '1976', '1977', '1978', '1979', '1980', '1981', '1982', '1983'
    db '1984', '1985', '1986', '1987', '1988', '1989', '1990', '1991', '1992'
    db '1993', '1994', '1995'
    ;以上表示21年的21个字符串

    ;收入
    dd 16, 22, 382, 1356, 2390, 8000, 16000, 24486, 50065, 97479, 140417, 197514
    dd 345980, 590827, 803530, 1183000, 1843000, 2759000, 3753000, 4649000, 5937000
    ;以上是表示21年公司总收入的21个dword型数据

    ;员工
    dw 3, 7, 9, 13, 28, 38, 130, 220, 476, 778, 1001, 1442, 2258, 2793, 4037, 5635, 8226
    dw 11542, 14430, 15257, 17800   
    ;以上是表示21年公司雇员人数的21个word型数据

data ends
table segment
    db 21 dup ('year summ ne ??')
table ends
stack segment
    db 16 dup (0)
stack ends
codesg segment
start:  mov ax,stack
        mov ss,ax
        mov sp,16

        mov ax,data
        mov es,ax

        mov ax,table
        mov ds,ax

        mov cx,21
        mov bx,0
        mov si,0 ;细节
        
    s:  push cx
        mov cx,4
        mov si,0
        s1: mov al,es:[si]
            mov ds:[bx+si],al
            inc si
            loop s1
            mov al,' '
            mov ds:[bx+si],al

            mov cx,2
            mov si,0
        s2: mov ax,es:[si+21]
            mov ds:[bx+si+5],ax
            inc si
            loop s2
            mov al,' '
            mov ds:[bx+si+5],al

            mov cx,1
            mov si,0
        s3: mov ax,es:[si+105]
            mov ds:[bx+si+0ah],ax
            inc si
            loop s3
            mov al,' '            
            mov ds:[bx+si+0ah],al

            mov cx,1
            mov si,0
        s4: mov ax,ds:[bx+si+5]
            mov dx,ds:[bx+si+7]
            div word ptr ds:[bx+si+0ah]
            mov ds:[bx+si+0dh],ax
            inc si
            loop s4
            mov al,' '            
            mov ds:[bx+si+0dh],al
            add bx,16
            pop cx
    loop s 
    mov ax,4c00h
    int 21h
codesg ends
end start