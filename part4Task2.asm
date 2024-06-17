;count number of characters inserted by user and character must b less then 9
dosseg
.model small
.stack 100h
.data
    msg1 db 'ENTER CHARACTER:  $'
    msg2 db 'NUMBER OF CHARACTERS IN "$'
    msg3 db '" ARE $'

    var1 db 50 dup('$')
.code
main proc

               mov ax,@data
               mov ds,ax

               lea dx,msg1           ;FIRST MESSAGE
               mov ah,9
               int 21h

               mov si,offset var1
    loop1:     

               mov ah,1
               int 21h
               cmp al,13             ;check with enter ascii
               je  printarray
               mov [si],al           ;character mov to arrray
               inc si
               add bl,1

               jmp loop1

    printarray:
               mov dl,10
               mov ah,2
               int 21h

               cmp bl,10             ;if character greater then 10 then terminate
               je  programEnd
                              
               lea dx,msg2
               mov ah,9
               int 21h

               lea dx,var1           ;array msg
               mov ah,9
               int 21h
          
               lea dx,msg3
               mov ah,9
               int 21h

               mov dl,bl
               add dl,48
               mov ah,2
               int 21h
    programEnd:
               mov ah,4ch
               int 21h


main endp
 end main