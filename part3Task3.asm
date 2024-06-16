dosseg
.model small
.stack 100h
.data
    msg1 db "?$"
    var1 db ?
    var2 db ?
    var3 db ?

.code
main proc
              mov  ax, @data
              mov  ds, ax

              lea  dx, msg1     ;msg1
              mov  ah, 9
              int  21h
    ;three initials
              mov  ah,1         ;J
              int  21h
              mov  var1,al

              mov  ah,1         ;K
              int  21h
              mov  var2,al

              mov  ah,1         ;L
              int  21h
              mov  var3,al


              mov  dl,10
              mov  ah,2
              int  21h



              mov  cl, 11       ; set  outer loop
    outerloop:
              mov  bl, cl
              mov  cl, 11       ;  inner loop counter
              mov  dl, '*'

    
    
              call forMiddle

    innerloop:
    ; print  "8"
              mov  ah, 2
              int  21h
              loop innerloop

    ; newline
              mov  dl, 10
              mov  ah, 2
              int  21h

              mov  cl, bl
              loop outerloop
              call Bell
    ; exitprogram
              mov  ah, 4ch
              int  21h

main endp

forMiddle PROC
              cmp  bl, 6        ;outer loop is in 6row then it print JKL in middle else return
              je   nowprint
              ret
    nowprint: 

              mov  cl, 4
    loop1:    
       
              mov  ah, 2
              int  21h
              loop loop1

    ;  "JKL"
              mov  dl, var1
              mov  ah, 2
              int  21h
              mov  dl, var2
              mov  ah, 2
              int  21h
              mov  dl, var3
              mov  ah, 2
              int  21h

    ;  last 4 "*"
              mov  cl, 4
    loop2:    
              mov  dl, '*'
              mov  ah, 2
              int  21h
              loop loop2

    
              mov  dl, 10
              mov  ah, 2
              int  21h

              mov  dl,'*'
              sub  bl,1         ;1 row is sub
              mov  cl,11
   
              ret
forMiddle ENDP

Bell PROC
              mov  dl, 7        ; ascii bell
              mov  ah, 2
              int  21h
              ret
Bell ENDP
end main
