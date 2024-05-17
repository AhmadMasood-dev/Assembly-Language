 dosseg
 .model
 .stack 100h
 .data
  var1 db "Numbers are equal$"
  var2 db "Not Equal$"
 .code
  main proc
   mov ax,@data
   mov ds,ax
   
   mov ah,1
   int 21h
   mov dl,al

   mov ah,1
   int 21h 
   mov cl,al


    cmp dl,cl 

    mov dl,10
    mov ah,2
    int 21h
   
    je equal

     lea dx ,var2
     mov ah,9
     int 21h

     mov ah,4ch
     int 21h
     
    equal:
     mov dx,offset var1
     mov ah,9
     int 21h
 

   mov ah,4ch
   int 21h
  main endp
 end main
 