.model small
  .stack 100h
   .data
  .code

  main proc
   mov ah, 4ch

   
   mov ah,1
   int 21h
   sub al, '0';convert char to number 
   mov bl,al

    mov ah,1 
   int 21h
   sub al, '0'
   mov cl,al

    mov ah,1
    int 21h
    sub al, '0'
    mov dl,al
   
    add bl,cl
    ;add first two numbers now

    add bl,dl
     ;now add result of first addition tolast number
    
    add bl, '0'
    ;converted back from number to char
   mov dl,bl
    mov ah,2
   int 21h

   mov ah, 4ch
   int 21h

  main endp
 end main