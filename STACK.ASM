.model small
.stack 100h
.code
main proc
mov ax,'7'
mov bx,'9'
push ax
push bx
mov bx, '12'
push bx
pop bx
mov dx,bx
mov ah,2
int 21h
pop bx
mov dx,bx
mov ah,2
int 21h
pop bx
mov dx,bx
mov ah,2
int 21h
mov ah,4ch
int 21h
main endp
end main
