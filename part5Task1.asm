;the number is even positive or even Negative and odd positive or odd negative
dosseg
.model small
.stack 100h
.data
    msg1         db 'Enter number $'
    negativeEven db 'even negative number $'
    positiveEven db 'even positive number $'
    negativeOdd  db 'ODD negative number $'
    positiveOdd  db 'ODD positive number $'
    var          db -6
    temp         db ?

.code
main proc
              mov  ax, @data
              mov  ds, ax

              
              mov  al, var
    
              test al, 128             ; checks number is zero
              jz   zero

              cmp  al, 0               ; check number is positive
              jge  positive

  
              mov  al, -al             ; if  number is negative makeit positive

    positive: 
    
              and  al, 1               ; checks if the number is even
              jz   even_n

  
              lea  dx, negativeOdd     ; if the number is odd, print the message
              mov  ah, 9
              int  21h
              jmp  exit

    even_n:   
  
              lea  dx, negativeEven    ; message
              mov  ah, 9
              int  21h
              jmp  exit

    zero:     
   
              and  al, 1
              jz   even_zero

   
              lea  dx, positiveOdd     ; if the number is odd
              mov  ah, 9
              int  21h
              jmp  exit

    even_zero:
   
              lea  dx, positiveEven
              mov  ah, 9
              int  21h

    exit:     
              mov  ah, 4ch
              int  21h

main endp
end main
