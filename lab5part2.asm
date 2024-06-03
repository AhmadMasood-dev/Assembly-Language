dosseg
 .model small
 .stack 100h
 .data
  .code
    main proc

     mov ah,1
     int 21h
     mov dl,al
 
    mov dl,al
    
    cmp dl,89  ; compare with Y ascii
    je smaller
    
    cmp dl,121  ; compare with y ascii 
    
    je larger
    
    jp endprogram
    
    smaller:
    mov ah,2
    int 21h
    
    jp endprogram
   
     larger:
    
     mov ah,2
     int 21h
      jp endprogram
    
    endprogram:

     mov ah, 4ch
     int 21h
    main endp
  end main