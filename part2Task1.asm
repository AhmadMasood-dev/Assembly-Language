;input one of the hex digits A-F, convert it into decimal and display it on the next line.
dosseg
.model small
.stack 100h
.data
    msg1 db 'ENTER A HEX DIGIT: $'
    msg2 db 'IN DECIMAL: $'
    msg3 db 'NOT AN HEX DIGIT: $'
    num1 db ?
    var1 db '1$'
.code
main proc

             mov  ax,@data
             mov  ds,ax

             lea  dx,msg1     ;show first msg
             mov  ah,9
             int  21h

             mov  ah,1        ;take hexa digit
             int  21h
             mov  dl,al
             mov  num1,dl     ;store to num1

             mov  dl,10       ;for space
             mov  ah,2
             int  21h

             lea  dx,msg2     ;second msg shown
             mov  ah,9
             int  21h

             mov  dl,num1     ;fetch number that we store before

             mov  cl,6        ;for loop
             mov  bl,65       ;cmp with
    checkhex:
             cmp  dl,bl
             je   print
             add  bl,1
             LOOP checkhex
             
             lea  dx,msg3
             mov  ah,9
             int  21h         ;if it is not hexa then end the program
             mov  ah,4ch
             int  21h
    print:   
   
             lea  dx,var1     ;shown 1
             mov  ah,9
             int  21h

             mov  dl,54       ;mov 54 to dl
             sub  dl,cl       ; sub loop iteration times and get the number
             mov  ah,2
             int  21h


             mov  ah,4ch
             int  21h


main endp
 end main