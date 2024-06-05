.model small
.stack 100h
.data
    var1 dw 60
    var2 dw 72
    msg  db 'gcd is : $'
.code
main proc
              mov  ax, @data
              mov  ds, ax

 
              mov  ax, d1
              mov  bx, d2

              call gcd


              mov  dx, offset msg1
              mov  ah, 9
              int  21h

              call print


              mov  ah, 4ch
              int  21h
main endp

gcd proc

              cmp  bx, 0
              je   exit_gcd


    next_iter:
              xor  dx, dx
              div  bx
              mov  ax, bx
              mov  bx, dx
              cmp  bx, 0
              jne  next_iter

    exit_gcd: 
              ret
gcd endp

print proc
 
              mov  cx, 0
              mov  bx, 10

    label1:   

              cmp  ax, 0
              je   print1


              div  bx
              push dx

 
              inc  cx

              jmp  label1

    print1:   

              cmp  cx, 0
              je   exit

              pop  dx

              add  dx, 48


              mov  ah, 02h
              int  21h


              dec  cx
              jmp  print1

    exit:     
              ret
print endp

end main


