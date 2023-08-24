assume cs:codesg,ds:seg
seg segment
    db 'DEC'
    db 'Ken Olsen'
    db '137'
    db '40'
    db 'PDP'
seg ends
codesg segment
start:  mov ax,seg
        mov ds,ax
        mov bx,0
        mov word ptr [bx+0ch],38
        mov word ptr [bx+0eh],70

        mov si,0
        mov byte ptr [bx+10h+si],'V'
        inc si
        mov byte ptr [bx+10h+si],'A'
        inc si
        mov byte ptr [bx+10h+si],'X'
        inc si

codesg ends
end start