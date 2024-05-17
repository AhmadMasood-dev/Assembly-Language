dosseg
 .model small
 .stack 100h
 .data
  .code
    main proc

 ;*****
 ;****
 ;***
 ;**
 ;**
 ;**
 ;***
 ;****
 ;*****

    mov cl,5
    outerLoop:
    mov dl,'*'
    mov bl,cl

    innerLoop:
    mov ah,2
    int 21h
    
        
    LOOP innerLoop

     mov cl,bl
     mov ah,10
    int 21h
    
    
     LOOP outerLoop

     mov ah, 4ch
     int 21h
    main endp
  end main