;average of array
dosseg
.model small
.stack 100h
.data
    array db 23,12,14,11,5,3,10,16,'$'

.code
main proc
             mov  ax,@data
             mov  ds,ax

             lea  si,array
         
             mov  bl,0
             mov  dl,0

    loop1:   
             mov  al,[si]     ;get number
             cmp  al,'$'
             je   printNow
             inc  si
             add  dl,al
             add  bl,1
             jmp  loop1
    printNow:

             mov  al,dl
             div  bl
             cbw
             call decout

             mov  ah,4ch
             int  21h

main endp
DECOUT PROC
             PUSH AX          ; Preserve AX
             PUSH BX          ; Preserve BX
             PUSH CX          ; Preserve CX
             PUSH DX          ; Preserve DX

             CMP  AX, 0       ; Check if AX value is non-negative
             JG   ALPHA       ; If AX is positive, jump to ALPHA

             PUSH AX          ; Save value of AX
             MOV  DL, '-'     ; Set DL to '-' for negative sign
             MOV  AH, 2       ; Print character DOS function
             INT  21H         ; Print '-' character
             POP  AX          ; Restore value of AX
             NEG  AX          ; Convert AX to its negative representation

    ALPHA:                    ; ALPHA label
             XOR  CX, CX      ; Clearing CX value
             MOV  BX, 10      ; Divisor in BX

    WHILE_:                   ; WHILE_ label
             XOR  DX, DX      ; Clearing DX value
             DIV  BX          ; Dividing AX by BX
             PUSH DX          ; Save remainder value into stack
             INC  CX          ; Increment CX to count the values inserted
             CMP  AX, 0       ; Check if AX is zero
             JNE  WHILE_      ; If AX is not zero, repeat the loop
             MOV  AH, 2       ; Set up for printing DL part of DX

    PRINT:                    ; PRINT label
             POP  DX          ; Load 8-bit value into DL from popped DX
             ADD  DL, 48      ; Convert to ASCII decimal value
             INT  21H         ; Display the DL value
             LOOP PRINT       ; Decrement CX value and jump until CX is zero

             POP  DX          ; Restoring values
             POP  CX
             POP  BX
             POP  AX

             RET              ; Return from procedure
DECOUT ENDP                   ; End of DECOUT procedure
end main                ; End of main program