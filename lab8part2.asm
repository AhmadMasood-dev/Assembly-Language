
dosseg
.model small
.stack 100h
.data
    rectangleHeight db 3
    rectanglewidth  db 8
    rectangleArea   dw ?

    squarewidth     db 5
    squareHeight    db 5
    squareArea      dw ?

    msg1            db 'Area of rectangle is : $'
    msg2            db 'Area of square is : $'

.code
main proc
           mov  ax, @data
           mov  ds, ax

           mov  al, rectangleHeight
           mov  bl, rectanglewidth
           mul  bl
           mov  rectangleArea, ax


           mov  al, squareHeight
           mov  bl, squarewidth
           mul  bl
           mov  squareArea, ax


           lea  dx, msg1
           mov  ah, 9
           int  21h

           mov  ax, rectangleArea
           call DECOUT

           mov  dl, 10
           mov  ah, 2
           int  21h

           lea  dx, msg2
           mov  ah, 9
           int  21h

           mov  ax, squareArea
           call DECOUT

           mov  ah, 4ch
           int  21h


main endp
DECOUT PROC
           PUSH AX
           PUSH BX
           PUSH CX
           PUSH DX
           CMP  AX, 0                  ; to check if AX value is non-negative
           JG   ALPHA                  ; if AX is positive
           PUSH AX                     ; save value of AX
           MOV  DL, '-'                ; to print sign (negative)
           MOV  AH, 2                  ; print routine of int 21h
           INT  21H
           POP  AX                     ; restore value of AX
           NEG  AX                     ; negative representation of AX
    
    ALPHA: 
           XOR  CX, CX                 ; clearing CX value
           MOV  BX, 10                 ; divisor in BX
    
    WHILE_:
           XOR  DX, DX                 ; clearing DX value
           DIV  BX                     ; Dividing AX by BX
           PUSH DX                     ; saving remained value into stack
           INC  CX                     ; increment CX to count the values inserted
           CMP  AX, 0                  ; to check if AX is zero
           JNE  WHILE_                 ; if above condition is false jump
           MOV  AH, 2                  ; to print DL part of DX
    
    PRINT: 
           POP  DX                     ; 8 bits value is loaded in DL from popped DX
           ADD  DL, 48                 ; conversion to decimal value
           INT  21H                    ; display the DL value
           LOOP PRINT                  ; decrement CX value and jump till CX is zero
    
           POP  DX                     ; restoring values
           POP  CX
           POP  BX
           POP  AX
    
           RET
DECOUT ENDP
end main
