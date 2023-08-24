assume cs:code
code segment

	mov ax,code
	mov ds,ax
	mov ax,0020h
	mov es,ax
	mov bx,0
	mov cx,18h
s:
	mov al,ds:[bx]
	mov es:[bx],al
	inc bx
	loop s 
	
	mov ax,4c00H
	int 21H
code ends
end
