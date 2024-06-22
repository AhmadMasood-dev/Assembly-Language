; input a character string from user and will display it in reverse order on next line
dosseg
.model small
.stack 100h
.data
      msg1 db 'ENTER CHARACTERS:  $'
.code
main proc

            mov  ax,@data
            mov  ds,ax

            lea  dx,msg1       ;FIRST MESSAGE
            mov  ah,9
            int  21h


            mov  cl,0
      loop1:

            mov  ah,1
            int  21h
            cmp  al,13
            je   loop2
            push ax            ;push value if not equal to 13(enter)
            inc  cl            ;count number of character been pushed
            jmp  loop1

                 
                  
      loop2:
            pop  ax            ;get character from stack and show it
            mov  dx,ax
            mov  ah,2
            int  21h
            LOOP loop2
               

            mov  ah,4ch
            int  21h


main endp
 end main