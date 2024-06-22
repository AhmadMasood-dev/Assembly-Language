; first and last character of string 
dosseg
.model small
.stack 100h
.data
    msg1 db 'ENTER CHARACTERS:  $'
    msg2 db 'FIRST CHARACTER:  $'
    msg3 db 'LAST CHARACTER:  $'
    var1 dw ?

.code
main proc

               mov  ax,@data
               mov  ds,ax

               lea  dx,msg1       ;ENTER CHARACTERS:
               mov  ah,9
               int  21h

               mov  cx,0
    loop1:     

               mov  ah,1
               int  21h
               cmp  al,13         ;13(enter)
               je   print         ;if enter pressed then go to print
               push ax            ;send to stack
               inc  cx            ;count number of character been pushed
               jmp  loop1

    print:     
               lea  dx,msg3       ;last chacter
               mov  ah,9
               int  21h

               pop  ax            ;get character from stack and show it
               mov  dx,ax
               mov  ah,2
               int  21h
               sub  cx,1
    loop2:     
               pop  ax            ;get character from stack and show it
               cmp  cx,0
               mov  var1,ax
               je   first_char
               loop loop2
    first_char:
               mov  dl,10
               mov  ah,2
               int  21h

               lea  dx,msg2       ;first chacter of string
               mov  ah,9
               int  21h
               
               mov  dx,var1
               mov  ah,2
               int  21h

               mov  ah,4ch
               int  21h


main endp
 end main