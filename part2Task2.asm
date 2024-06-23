;program to get 2 numbers find sum and sub 
dosseg
.model small
.stack 100h
.data
       var1 db 'Enter A Number : $'
       var2 db 'Enter A Number Again: $'
       var3 db 'Sum = $'
       var4 db 'Sub = $'
       num1 db ?
       num2 db ?
.code
main proc
            mov ax,@data
            mov ds,ax


            lea dx, var1       ;msg1
            mov ah,9
            int 21h

            mov ah,1
            int 21h
            sub al,48          ;convert to ascii
            mov num1,al

            mov dl,10          ;space
            mov ah,2
            int 21h

            lea dx, var2       ;msg2
            mov ah,9
            int 21h

            mov ah,1           ;second num
            int 21h
            sub al,48
            mov num2,al

            mov dl,10
            mov ah,2
            int 21h

            lea dx, var3       ;sum=
            mov ah,9
            int 21h

            mov dl,num1
            mov bl,num2
            add dl,bl
            add dl,48          ;convert ascii to char
            mov ah,2
            int 21h

            mov dl,10
            mov ah,2
            int 21h
            
            lea dx, var4
            mov ah,9
            int 21h

            mov dl,num1
            mov bl,num2
            sub dl,bl
            add dl,48
            mov ah,2
            int 21h

            mov ah,4ch
            int 21h


main endp
end main