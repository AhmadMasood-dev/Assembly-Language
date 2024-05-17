dosseg
.model small
.stack 100h
.data
    myString db 'Zain$' ; '$' terminates the string
.code
main proc
    mov ax, @data
    mov ds, ax

    ; Display the string
    lea dx, myString
    mov ah, 09h
    int 21h

    ; Exit the program
    mov ah, 4Ch
    int 21h
main endp
end main
