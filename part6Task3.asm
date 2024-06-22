; find the length of a string using stack 
dosseg
.model small
.stack 100h
.data
    msg1 db 'enter characters:  $'
    msg2 db 'toal character are: $'
.code
main proc

          mov  ax,@data
          mov  ds,ax

          lea  dx,msg1     ;first msg
          mov  ah,9
          int  21h


          mov  cl,0
    loop1:

          mov  ah,1
          int  21h
          cmp  al,13
          je   print
          push ax          ;push value if not equal to 13(enter)
          inc  cl          ;count number of character been pushed
          jmp  loop1

                 
                  
    print:
    
          lea  dx,msg2     ;second msg
          mov  ah,9
          int  21h
          mov  dl,cl
          add  dl,48
          mov  ah,2
          int  21h
               

          mov  ah,4ch
          int  21h


main endp
 end main