dosseg
.model
.stack 100h
.data
 var1 db "hi$"
 var2 db "How are you?$"
.code
 main proc
  mov ax,@data
   mov ds,ax

    lea dx,var1
    mov ah,9
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h

    lea dx,var2
    mov ah,9
    int 21h 

 mov ah,4ch
 int 21h
 main endp
 end main
 ;EqualNumber