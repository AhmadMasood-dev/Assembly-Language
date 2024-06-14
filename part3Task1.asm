;*
;**
;***
;****
;*****
;******
;*******
dosseg
.model small
.stack 100h

.data
    var1 db 'ENTER A NUMBER: $'

.code
main proc
              mov ax, @data
              mov ds, ax

    
              lea dx, var1     ; show msg
              mov ah, 9
              int 21h


              mov ah, 1        ;take input number
              int 21h
              sub al, 48       ; for ascii
              mov ch, al       ; move to ch for  loop

              mov dl, 10       ;new line
              mov ah, 2
              int 21h


              mov cl, 1

    upperloop:
              mov bl, cl       ; save for outer loop
              mov cl, 1        ;for  inner loop

              mov dl, 42       ; ascii of *

    innerloop:
              mov ah, 2
              int 21h

              inc cl
              cmp cl, bl       ; compare inner loop counter with outer loop counter
              jle innerloop

              mov dl, 10       ; for next line
              mov ah, 2
              int 21h

              mov cl, bl
              inc cl           ; increase outer loop counter
              cmp cl, ch       ; compare with total number of rows
              jle upperloop

              mov ah, 4Ch
              int 21h

main endp
end main
