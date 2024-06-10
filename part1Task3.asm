dosseg
.model small
.stack 100h
.data
    var1 db 'ENTER THREE INITIALS: $'
    var2 db ?
    var3 db ?
    var4 db ?
.code

main proc
         mov ax,@data
         mov ds,ax

         lea dx,var1
         mov ah,9
         int 21h

         mov ah,1
         int 21h
         mov var2,al

         mov ah,1
         int 21h
         mov var3,al

         mov ah,1
         int 21h
         mov var4,al


         mov dl,10
         mov ah,2
         int 21h



         mov dl, var2
         mov ah,2
         int 21h

         mov dl,10
         mov ah,2
         int 21h



         mov dl, var3
         mov ah,2
         int 21h

         mov dl,10
         mov ah,2
         int 21h



         mov dl, var4
         mov ah,2
         int 21h


         mov ah,4ch
         int 21h
main endp

end main
