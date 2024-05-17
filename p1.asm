.model small
  .stack 100h
   .data
  .code

  main proc
  
  mov cx,256
    mov dl,1
  ascii: 

    mov ah,2
    int 21h
    add dl,1

  LOOP ascii


   mov ah, 4ch
   int 21h

  main endp

 end main