dosseg
 .model small
 .stack 100h
 .data
  .code
    main proc
    mov cx,1
    check:
    
    mov ah,1
    int 21h
    mov dl,al
    cmp dl,' '
    je endProgram
    inc cx
    LOOP check

    endProgram:
    mov ah, 4ch
    int 21h
    main endp
  end main