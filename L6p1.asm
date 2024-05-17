;if 1 or 3, display "O"; if  2 or 4, display "E",
dosseg
 .model small
 .stack 100h
 .data
  .code
    main proc

    mov ah,1  ; get input
    int 21h
    

    mov dl,al
    
    CMP	dl,'1'
    je displayO
    
    CMP dl,'3'
    je displayO

    CMP dl,'2'
    je displayE

    CMP dl,'4'
    je displayE
    
      jmp endProgram

    displayO:
  
    mov dl,'O'
    mov ah,2
    int 21h

      jmp endProgram

    displayE:
  
    mov dl,'E'
    mov ah,2
    int 21h
    
    endProgram:
    
    mov ah, 4ch
    int 21h
    
    main endp
  end main