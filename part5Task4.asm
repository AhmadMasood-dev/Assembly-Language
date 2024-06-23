;find sum of odd Numbers and even numbers 
dosseg
.model small
.stack 100h
.data
    msg1  db 'sum of even: $'
    msg2  db 'sum of odd: $'

    array db 1,2,3,4,5,6,7,8,9

    var1  db ?
    var2  db ?

.code
main proc
               mov  ax,@data
               mov  ds,ax

               lea  si,array      ;array address in si
               mov  cl,0
               mov  bl,0
               mov  dl,0

    loop1:     
               mov  al,[si]
               inc  si
               test al,1          ; test with LSB
               jz   evenNumber    ;if even number go to even side

               add  bl,al
               mov  var2, bl      ;store value to var2 for odd
               inc  cl
               cmp  cl,9
               je   now_print
               jmp  loop1

    evenNumber:
               add  dl,al
               mov  var1,dl       ;store value to var1 for even
               inc  cl
               cmp  cl,9          ;arrray size
               je   now_print
               jmp  loop1

    now_print: 

               lea  dx,msg1       ;msg1
               mov  ah,9
               int  21h
               mov  al,var2

               cbw                ;word to byte

               call DECOUT

               mov  dl,10
               mov  ah,2
               int  21h

               lea  dx,msg2       ;msg2
               mov  ah,9
               int  21h

               mov  al,var1

               cbw

               call DECOUT

    exit:      
               mov  ah,4ch
               int  21h

main endp
DECOUT PROC
               PUSH AX            ; Preserve AX
               PUSH BX            ; Preserve BX
               PUSH CX            ; Preserve CX
               PUSH DX            ; Preserve DX

               CMP  AX, 0         ; Check if AX value is non-negative
               JG   ALPHA         ; If AX is positive, jump to ALPHA

               PUSH AX            ; Save value of AX
               MOV  DL, '-'       ; Set DL to '-' for negative sign
               MOV  AH, 2         ; Print character DOS function
               INT  21H           ; Print '-' character
               POP  AX            ; Restore value of AX
               NEG  AX            ; Convert AX to its negative representation

    ALPHA:                        ; ALPHA label
               XOR  CX, CX        ; Clearing CX value
               MOV  BX, 10        ; Divisor in BX

    WHILE_:                       ; WHILE_ label
               XOR  DX, DX        ; Clearing DX value
               DIV  BX            ; Dividing AX by BX
               PUSH DX            ; Save remainder value into stack
               INC  CX            ; Increment CX to count the values inserted
               CMP  AX, 0         ; Check if AX is zero
               JNE  WHILE_        ; If AX is not zero, repeat the loop
               MOV  AH, 2         ; Set up for printing DL part of DX

    PRINT:                        ; PRINT label
               POP  DX            ; Load 8-bit value into DL from popped DX
               ADD  DL, 48        ; Convert to ASCII decimal value
               INT  21H           ; Display the DL value
               LOOP PRINT         ; Decrement CX value and jump until CX is zero

               POP  DX            ; Restoring values
               POP  CX
               POP  BX
               POP  AX

               RET                ; Return from procedure
DECOUT ENDP                       ; End of DECOUT procedure
end main                ; End of main program