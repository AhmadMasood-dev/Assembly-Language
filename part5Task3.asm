; convert 8-bit BCD number to its respective ACSII Code
.model small
.stack 100h
.data
    var  dw 41    ; BCD number
    num1 db ?
    num2 db ?

.code
main proc

    
         mov ax, @data
         mov ds, ax

     
         mov ax, var
         mov bl, 10

   
         div bl           ; bcd /10 to get reminder and store to ah

    
         mov num1, al

         mov num2, ah

         mov dl, num1
         add dl, 48
         mov ah, 2
         int 21h

         mov dl, num2
         add dl, 48
         mov ah, 2
         int 21h


         mov ah, 4ch
         int 21h

main endp
end main