dosseg
  .model small
  .stack 100h
  .data
  .code

  main proc
   
   mov ax,10

   mov dl,'Z' ;(data register) 
   mov ah,2 ;(standerd space register)


   int 21h
   mov dl,'A'
    mov ah,2 


   int 21h
    mov dl,'I'  
    mov ah,2 


   int 21h
    mov dl,'N' 
   mov ah,2 

   int 21h
   
  

   mov ah, 4ch;(for return)
int 21h

main endp

end main