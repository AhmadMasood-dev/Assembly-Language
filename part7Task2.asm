;print 10x10 using *
dosseg
.model small
.stack 100h
.data
.code


main proc
    mov cx,10
    loop1:
     mov bx,cx

     call PRINTSTAR ;callnew function

      mov dl,10
      mov ah,2
      int 21h
      mov cx,bx
      LOOP loop1

          mov  ah,4ch
          int  21h


main endp

PRINTSTAR PROC
              mov  cx,10
              mov  ah,2
              mov  dl,'*'
    PRINT:    
    
              int  21h
              LOOP PRINT
              ret
PRINTSTAR ENDP
 end main