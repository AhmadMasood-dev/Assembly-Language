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
    
    jp endprogram
   
    jg isgreater

    isgreater:
    cmp dl,91 
 
    issmaller:
    mov ah,2
    int 21h

   jp endprogram
   
     endprogram:
     mov ah, 4ch
     int 21h
    main endp
  end main