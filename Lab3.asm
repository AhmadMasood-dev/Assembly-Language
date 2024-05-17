
  .model small
  .stack 100h
  .data
  .code

  main proc
;a
     mov ah,1
   int 21h
  
   mov dl,al
    sub dl, 32
    mov ah, 2 
    int 21h
;h
    mov ah,1
   int 21h
  
   mov dl,al
    sub dl, 32
    mov ah, 2 
    int 21h
;m
     mov ah,1
   int 21h
  
   mov dl,al
    sub dl, 32
    mov ah, 2 
    int 21h
;a
     mov ah,1
   int 21h
  
   mov dl,al
    sub dl, 32
    mov ah, 2 
    int 21h
;d
   mov ah,1
   int 21h
  
   mov dl,al
    sub dl, 32
    mov ah, 2 
    int 21h




    mov ah, 4ch
  int 21h

  main endp

  end main

  ;this program take lower character and convert to uppercase and display capital letters