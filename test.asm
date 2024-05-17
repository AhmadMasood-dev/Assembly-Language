dosseg
.model small
.stack 100h
.data 

.code 
main proc

mov ah,1  
int 21h
mov dl,al
mov ah,1 
int 21h


mov cl,al
mov al,cl
sub cl,48
loop:
mov ah,2
int 21h
dec cl
 loop

     mov ah,4ch
     int 21h

        main endp
   end main