dosseg
.model small
  .stack 100h
   .data

   var2 db '12345 $'


  .code

  main proc
   mov ax,@data
   mov ds,ax

 mov cx,5
 loop1:

 lea dx,  var2

      mov ah,9
      int 21h

    mov dl,10
    mov ah,2 
   int 21h

 
     LOOP loop1

   mov ah, 4ch
   int 21h

  main endp

 end main


