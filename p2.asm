.model small
  .stack 100h
   .data
    var1 db ' * $'
    var2 db ' = $'
   var3 db '1 $'
  .code

  main proc
     mov ax,@data
   mov ds,ax

  mov ah,1 
  int 21h

  mov dx,ax
  mov bx,dx ;6;54
  mov ah,2
  int 21h

  sub bx,48
  lea dx,var1
 mov ah,9
  int 21h
   lea dx,var3
 mov ah,9
  int 21h
  mov dx,1
;   add dx,48
  mov cx,10
  ascii: 
; sub bx,30
   mov ax,bx
   
    mul dx 
    mov dx,ax
    add dx,'0'
   mov bx,dx
  lea dx,var2
   mov ah,9
  int 21h
  mov dx,bx
    mov ah,2
    int 21h
;    sub dx,'0'
   add dx,1

    ; mov ah,2
    ; int 21h


  LOOP ascii

 mov ah, 4ch
   int 21h

  main endp

 end main

 