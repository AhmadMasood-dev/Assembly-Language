.model small
  .stack 100h
.data
    var1 db 'ENTER A CHARACTER: $'
    var2 db 'You Entered: $'
    var3 db ?
.code

main proc
         mov ax,@data
         mov ds,ax

         lea dx,var1
         mov ah,9
         int 21h

         mov ah,1
         int 21h
         mov dl,al
         mov var3,dl

    

         mov dl,10
         mov ah,2
         int 21h


         lea dx,var2
         mov ah,9
         int 21h

         mov dl, var3

         mov ah,2

         int 21h



         mov ah,4ch
         int 21h
main endp

 end main
