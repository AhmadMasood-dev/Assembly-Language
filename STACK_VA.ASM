dosseg
.model small
.stack 100h
.data
var1 dw 5
.code
main proc
mov ax,@data
mov ds,ax
mov cx,5
l1:
mov ah,1
int 21h
mov var1,ax
push var1
loop l1
mov dx,10
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h
mov cx,5
l2:
pop var1
mov dx,var1
mov ah,2
int 21h
mov dx,10
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h

loop l2
mov ah,4ch
int 21h
main endp
end main
