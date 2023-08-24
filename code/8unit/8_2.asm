; 计算datdasg段中第一个数据除以第二个数据的商存入第三个数据内存单元
assume cs:codesg,ds:datasg
datasg segment
    dd 100001 ;186A1h  dd伪指令，定义双字型数据
    dw 100    ;64h
    dw 0    ;余数03e8h
datasg ends
codesg segment
start:  mov ax,datasg
        mov ds,ax
        mov ax,ds:[0]
        mov dx,ds:[2]
        div word ptr ds:[4]
        mov ds:[6],ax  
        mov ax,4c00h
        int 21h
codesg ends
end start
