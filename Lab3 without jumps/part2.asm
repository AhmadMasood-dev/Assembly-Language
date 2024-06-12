dosseg
.model small
  .stack 100h
   .data

;    var1 db 'Enter your name: $'
   var2 db 'Ahmad_Masood $'

  .code

  main proc
   mov ax,@data
   mov ds,ax

  mov cl,4
 loop_name:

 lea dx,  var2


      mov ah,9
      int 21h

    mov dl,32
    mov ah,2 
   int 21h

     LOOP loop_name

   mov ah, 4ch
   int 21h

  main endp

 end main


