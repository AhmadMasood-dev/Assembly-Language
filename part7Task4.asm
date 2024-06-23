;calcualte LCM of two numbers
.model small
.stack 100h
.data
    message db 'LCM = $'
    var1    dw 60
    var2    dw 72
    divid   dw 1
    GCD     dw ?
    LCM     dw ?

.code
main proc
   
               mov  ax, @data
               mov  ds, ax


               lea  dx, message
               mov  ah, 9
               int  21h


               mov  cx, var1
    repeat:    
               mov  dx, 0
               mov  ax, var1
               div  divid          ;divide the number by the divisor
               mov  bx, dx         ;mov to bx
               mov  dx, 0          ;and dx again zero
               mov  ax, var2       ;second number now
               div  divid
               cmp  dx, bx         ;if both are equal then save it
               je   saveNumber
               jne  skipNumber

    saveNumber:
               mov  bx, divid
               mov  GCD, bx

    skipNumber:
               inc  divid
               loop repeat

    ; calculate LCM=(var1*var2)/GCD

               mov  ax, var1
               mov  bx, var2
               mul  bx
        
               div  GCD
               mov  LCM, ax


               mov  ax, LCM

               call DECOUT

               mov  ah, 4ch
               int  21h
main endp

DECOUT PROC
               PUSH AX             ; Preserve AX
               PUSH BX             ; Preserve BX
               PUSH CX             ; Preserve CX
               PUSH DX             ; Preserve DX

               CMP  AX, 0          ; Check if AX value is non-negative
               JG   ALPHA          ; If AX is positive, jump to ALPHA

               PUSH AX             ; Save value of AX
               MOV  DL, '-'        ; Set DL to '-' for negative sign
               MOV  AH, 2          ; Print character DOS function
               INT  21H            ; Print '-' character
               POP  AX             ; Restore value of AX
               NEG  AX             ; Convert AX to its negative representation

    ALPHA:                         ; ALPHA label
               XOR  CX, CX         ; Clearing CX value
               MOV  BX, 10         ; Divisor in BX

    WHILE_:                        ; WHILE_ label
               XOR  DX, DX         ; Clearing DX value
               DIV  BX             ; Dividing AX by BX
               PUSH DX             ; Save remainder value into stack
               INC  CX             ; Increment CX to count the values inserted
               CMP  AX, 0          ; Check if AX is zero
               JNE  WHILE_         ; If AX is not zero, repeat the loop
               MOV  AH, 2          ; Set up for printing DL part of DX

    PRINT:                         ; PRINT label
               POP  DX             ; Load 8-bit value into DL from popped DX
               ADD  DL, 48         ; Convert to ASCII decimal value
               INT  21H            ; Display the DL value
               LOOP PRINT          ; Decrement CX value and jump until CX is zero

               POP  DX             ; Restoring values
               POP  CX
               POP  BX
               POP  AX

               RET                 ; Return from procedure
DECOUT ENDP                        ; End of DECOUT procedure
end main                ; End of main program