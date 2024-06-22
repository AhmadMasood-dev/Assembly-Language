;print * using 2 functions
dosseg
.model small
.stack 100h
.data
.code


main proc

              call PRINTSTAR ;callnew function


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