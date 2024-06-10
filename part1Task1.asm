.model small
  .stack 100h
.data
.code

main proc
;A
; H
;  M
; A
;D

    ;A
         mov dl,'A'
         mov ah,2
         int 21h
   
         mov dl,10
         mov ah,2
         int 21h
   
   
         mov dl,32
         mov ah,2
         int 21h
   ; H
         mov dl,'H'
         mov ah,2
         int 21h
   
         mov dl,10
         mov ah,2
         int 21h
   
         mov dl,32
         mov ah,2
         int 21h
   
         mov dl,32
         mov ah,2
         int 21h
   ;  M
         mov dl,"M"
         mov ah,2
         int 21h

         mov dl,10
         mov ah,2
         int 21h


         mov dl,32
         mov ah,2
         int 21h


   ; A
         mov dl,"A"
         mov ah,2
         int 21h
   
         mov dl,10
         mov ah,2
         int 21h

   ;D
         mov dl,"D"
         mov ah,2
         int 21h

         mov ah,4ch
         int 21h
main endp

 end main
