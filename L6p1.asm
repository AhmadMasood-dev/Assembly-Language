dosseg
 .model small
 .stack 100h
 .data
  .code
    main proc

    mov ah,8
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

    displayO:
    mov dl,'O'
    mov ah,2
    int 21h
      mov ah, 4ch
     int 21h
 
    displayE:
    mov dl,'E'
    mov ah,2
    int 21h
    

     mov ah, 4ch
     int 21h
    main endp
  end main