;user to enter a hex digit character ("0"· ... "9" or "A" ... "F"), display it on the next line in decimal, user types “y” or “Y”, the program repeat.

dosseg
.model small
.stack 100h
.data
    msg1 db 'ENTER A HEX DIGIT: $'
    msg2 db 'NOT AN HEX DIGIT: $'
    msg3 db 'DO YOU WANT TO TRY AGAIN (Y/N)? $'
    num1 db ?
    var1 db '1$'
.code

main proc
              mov  ax,@data
              mov  ds,ax
    repeat:   
              mov  dl, 10
              mov  ah,2
              int  21h

              lea  dx,msg1      ;show first msg
              mov  ah,9
              int  21h

              mov  ah,1         ;take hexa digit
              int  21h
              mov  dl,al
              mov  num1,dl      ;store to num1

              mov  dl,10        ;for space
              mov  ah,2
              int  21h
    ;check with numbers  first
              mov  dl,num1
              mov  bl,'0'
              mov  cx,10
    loop1:    

              cmp  bl,dl
              je   print
              add  bl,1

              LOOP loop1
              jmp  hexalpha     ;if not a number then check alphabets

    print:    
              mov  ah,2
              int  21h
   
              jmp  ask
    hexalpha:                   ;for alphabets

              mov  dl,num1      ;fetch number that we store before
              mov  cl,6         ;for loop
              mov  bl,65        ;start with A
    checkhex: 
              cmp  dl,bl
              je   printhexa
               
              add  bl,1
               
              LOOP checkhex

              lea  dx,msg2
              mov  ah,9
              int  21h          ;if it is not hexa then end the program
              jmp  ask

    printhexa:
              lea  dx,var1      ;shown 1
              mov  ah,9
              int  21h
              mov  dl,54        ;mov 54 to dl
              sub  dl,cl        ; sub loop iteration times and get the number
              mov  ah,2
              int  21h
              jmp  ask
    ask:      
              mov  dl, 10
              mov  ah,2
              int  21h
              lea  dx, msg3     ; ask if user wants to try again
              mov  ah, 9
              int  21h
              
              mov  ah, 1
              int  21h
              cmp  al, 'y'
              je   repeat
              cmp  al, 'Y'
              je   repeat

              mov  ah,4ch
              int  21h
main endp
 end main