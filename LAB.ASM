.model small
.stack 100h

.data
str db 6 dup(?), '$'
count db 10

.code
main proc
    mov ax, @data
    mov ds, ax

    mov cl, count
    mov ah, 0

generateLoop:
    call generateRandom
    call printNumber
    call enterKey

    loop generateLoop

    mov ah, 4ch
    int 21h
main endp

generateRandom proc
    xor ax, ax
    mov di, offset str

    mov bl, 10

generateRandomLoop:
    mov ah, 0
    int 1ah
    xor ah, ah
    div bl
    add dl, '0'
    mov [di], dl
    inc di

    loop generateRandomLoop

    ret
generateRandom endp

printNumber proc
    mov dx, offset str
    mov ah, 9
    int 21h
    ret
printNumber endp

enterKey proc
    mov dx, 10
    mov ah, 2
    int 21h
    mov dx, 13
    mov ah, 2
    int 21h
    ret
enterKey endp

end main
