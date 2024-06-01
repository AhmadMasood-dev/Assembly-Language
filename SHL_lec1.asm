;take two integer value and perform one of these AND,OR,XOR
dosseg
 .model small
 .stack 100h
.data

.code
main proc
  
        mov ax,2
        shl ax,2
 
        mov ax,4
        shr ax,3

        mov ah, 4ch
        int 21h
   
main endp
   end main