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
    mov dl,'*'  ;move * to dl
    mov bl,cl   ; cl to bl for later use

    innerLoop:
    mov ah,2
    int 21h 
        
    LOOP innerLoop

      mov cl,bl  ;now  bl(first time(5)) to cl
      mov dl,10  ;next line
      mov ah,2
      int 21h
      cmp cl,2   ;if cl equal to 2 then jump to nextloop
      je nextLoop 
    
    LOOP outerLoop

    nextLoop:
    mov dl,"*"   ; store * beacuse last time it contain 32(nxt line)
    mov ah,2
    int 21h

    mov ah,2
    int 21h

    mov dl,10
    int 21h

    mov cl,2   ;now start with 2 

    outerloop2:
    
    mov dl,"*"

    mov bl,cl

    innerloop2:
    
    mov ah,2
    int 21h 
    
    LOOP innerloop2
    
    mov dl,10   ; next line and print
    mov ah,2
    int 21h
    
    mov cl,bl 

    inc cl    ; increment untill to 6 
    cmp cl,6  ;cmp with 6 not with 5 because we start with 2
    
    jb outerloop2
    
    mov ah, 4ch
    int 21h
    main endp
  end main