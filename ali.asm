dosseg
.model small
.stack 100h

.data
.code
 main proc
   

   ;INPUT
   mov ah,1
   int 21h
  
   ;COMPARE IF CAPITAL Y
   cmp al,'Y'
   JE abc
   JNE xyz
   
   ;COMPARE IF SMALLER Y
   xyz:
   cmp al,'y'
   JE abc
   JNE pqr

   ;PRINT
   abc:
   mov dl,al
   mov ah,2
   int 21h
  

   ;TERMINATE
   pqr:
   mov ah, 4ch
   int 21h


main endp
end main


