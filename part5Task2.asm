;display number of 0’s and 1’s in a character entered by a user
dosseg
.model small
.stack 100h
.data
    var1       db ?
    msg1       db 'Enter a character: $'
    msg2       db 'zeros are: $'
    msg3       db 'ones are: $'
    zero_count db ?
    one_count  db ?
.code
main proc


            mov  ax,@data
            mov  ds,ax

            lea  dx,msg1
            mov  ah,9
            int  21h

            mov  ah,1             ;input from the user
            int  21h
            mov  var1,al

            mov  dl,10            ;next line
            mov  ah,2
            int  21h

            mov  dl,0
            mov  bl,0
            mov  cx,8             ;8bit code

            mov  al,var1
    loop1:  
            shr  al,1             ;mov 8bit number to shift right and LMS bit goes to carry flag
            jnc  addzero          ; if carry flag is zero then add zero_count else onescount
            add  bl,1
            mov  one_count,bl     ; store to variable
            LOOP loop1
    addzero:
            add  dl,1
            mov  zero_count,dl
            LOOP loop1

            lea  dx,msg2          ;msg zeros are
            mov  ah,9
            int  21h
            mov  dl,zero_count
            
            add  dl,48
            mov  ah,2
            int  21h


            mov  dl,10            ;next line
            mov  ah,2
            int  21h

            
            lea  dx,msg3          ;msg ones are
            mov  ah,9
            int  21h
            mov  dl,one_count
            add  dl,48
            mov  ah,2
            int  21h

            mov  ah,4ch
            int  21h


main endp
 end main