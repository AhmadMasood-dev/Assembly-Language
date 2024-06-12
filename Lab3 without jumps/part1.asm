dosseg
.model small
  .stack 100h
   .data
;    var1 db 1
   var1 db 'Enter a letter: $'
   var2 db '?'
   var3 db 'Enter occurrence: $'

  .code

  main proc
   mov ax,@data
   mov ds,ax

   lea dx,  var1
      mov ah,9
      int 21h

 mov ah,1
     int 21h
    mov bl,al
    mov var2,bl
   
   
   mov dl,10
    mov ah,2 
    int 21h

   lea dx,  var3

      mov ah,9
      int 21h
    ;   get occurrence
    mov ah,1
     int 21h
    mov dl,al
   
     sub dl,48
     mov cl,dl



    mov dl,32
    mov ah,2 
   int 21h

occurrence:
    mov ah,2
    mov dl,var2
    
   int 21h
      
     LOOP occurrence

   mov ah, 4ch
   int 21h

  main endp

end main


