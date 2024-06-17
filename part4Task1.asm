;If it is an upper case, the program will display it otherwise program will be terminated
dosseg
 .model small
 .stack 100h
 .data
  .code
    main proc
    
    mov ah,1
    int 21h
   
    mov dl,al
   
    cmp dl,64  
    
    jp endprogram ;check parity flag and jump if not capital
   

    cmp dl,91 

    mov ah,2
    int 21h

   
     endprogram:
     mov ah, 4ch
     int 21h
    main endp
  end main