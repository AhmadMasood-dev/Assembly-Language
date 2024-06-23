; the addition of two 16- bit numbers
dosseg
.model small
.stack 100h
.data
    num1   dw 1234H    ;16bit
    num2   dw 5678H    ;16bit
    result dw ?

.code

main PROC
         mov ax,num1
         mov bx,num2
         add ax,bx

         mov result ,ax

         mov dx,result
         sub dx,48

         mov ah,2
         int 21h

         mov ah,4ch
         int 21h

main ENDP
end main

