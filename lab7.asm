;take two integer value and perform one of these AND,OR,XOR
dosseg
 .model small
 .stack 100h
 .data
    msg1 db "Enter first number: $"
    msg2 db "Enter second number: $"
    msg3 db "Press 1.AND 2.OR 3.XOR $"
    msg4 db "Result is: $"
    number1 db ?
    number2 db ?
   result db "?"


   .code
   main proc
   mov ax,@data
   mov ds,ax

   lea dx,msg1
   mov ah,9
   int 21h

   mov ah,1  ; get 1st input
   int 21h
   sub al,48
   mov number1,al
   
   mov dl,10
   mov ah,2
   int 21h

   lea dx,msg2
   mov ah,9
   int 21h

   mov ah,1  ; get 2nd input
   int 21h
   sub al,48
   mov number2,al
   
   mov dl,10
   mov ah,2
   int 21h

   lea dx,msg3
   mov ah,9
   int 21h

   mov ah,1  ; get Operator to done
   int 21h

   cmp al,'1'
   je AND_Operator
   cmp al,'2'
   je OR_Operator
   cmp al,'3'
   je XOR_Operator

   mov ah,4ch
   int 21h

   AND_Operator:
   mov al,number1
   and al,number2
   add al,48
   mov result,al
   jmp print_Exit

   OR_Operator:
   mov al,number1
   or al,number2
   add al,48
   mov result,al
   jmp print_Exit

   XOR_Operator:
   mov al,number1
   xor al,number2
   add al,48
   mov result,al
   jmp print_Exit


   print_Exit:
   mov dl,10
   mov ah,2
   int 21h

   lea dx,msg4
   mov ah,9
   int 21h

   mov al,result

   mov dl,al
   mov ah,2
   int 21h

   mov ah, 4ch
   int 21h
   
   main endp
   end main