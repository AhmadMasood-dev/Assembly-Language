.MODEL small
.STACK 100h

.DATA

; The seed for the LCG.
seed dw 1234h

; The number of random numbers to generate.
num_rand dw 10

; The generated random numbers.
rand dw 0

.CODE

; The main procedure.
main proc

; Get the number of random numbers to generate from the user.
mov ah, 0Ah
lea dx, num_rand
int 21h

; Initialize the LCG.
mov seed, ax

; Generate the random numbers.
mov cx, num_rand
loop_gen:

; Generate a random number.
mov ax, seed
mul seed
add ax, 1234h
mov rand, ax

; Print the random number.
mov dl, rand
add dl, '0'
mov ah, 02h
int 21h

; Decrement the counter.
dec cx

; Loop until the counter reaches zero.
jne loop_gen

; Exit the program.
mov ah, 4Ch
int 21h

main endp

end main
