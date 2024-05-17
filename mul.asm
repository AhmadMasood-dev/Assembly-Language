dosseg
 .model small
 .stack 100h
 .data
  var1 db 'Enter a number$'
  var2 db '?'
 .code
  main proc
    
    mov ah,1
    int 21h
    mov dh,ah
     mov ah,2
    int 21h
    mov ah,4ch
    int 21h 
  main endp
 end main