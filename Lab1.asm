.model small
  .stack 100h
   .data
  .code

 main proc
  mov ah,4ch
  
  ; $ $ $ $
   mov dl,36
    mov ah,2 
   int 21h
   
   mov dl,32
    mov ah,2 
   int 21h
   
   
      mov dl,36
    mov ah,2 
   int 21h
   
   mov dl,32
    mov ah,2 
   int 21h
   
      mov dl,36
    mov ah,2 
   int 21h
   
   mov dl,32
    mov ah,2 
   int 21h
   
      mov dl,36
    mov ah,2 
   int 21h

   mov dl,32
    mov ah,2 
   int 21h

   mov dl,10
    mov ah,2 
   int 21h

;  $ $ $
   mov dl,32
    mov ah,2 
   int 21h
   
      mov dl,36
    mov ah,2 
   int 21h
   
   mov dl,32
    mov ah,2 
   int 21h
   
      mov dl,36
    mov ah,2 
   int 21h
   
   mov dl,32
    mov ah,2 
   int 21h
   
      mov dl,36
    mov ah,2 
   int 21h
 
   mov dl,10
    mov ah,2 
    int 21h

;   $ $
   mov dl,32
    mov ah,2 
   int 21h
   
   mov dl,32
    mov ah,2 
   int 21h
   
   mov dl,36
    mov ah,2 
   int 21h

   mov dl,32
    mov ah,2 
   int 21h
   
   mov dl,36
    mov ah,2 
   int 21h

   mov dl,32
    mov ah,2 
   int 21h
   
   
   mov dl,10
    mov ah,2 
   int 21h
;    $
   mov dl,32
    mov ah,2 
   int 21h
   
    mov dl,32
    mov ah,2 
   int 21h
   
    mov dl,32
    mov ah,2 
   int 21h
   

   
   mov dl,36
    mov ah,2 
   int 21h

   mov dl,10
    mov ah,2 
   int 21h

    mov dl,10
    mov ah,2 
   int 21h

;    T

    mov dl,32
    mov ah,2 
   int 21h
   
    mov dl,32
    mov ah,2 
   int 21h
   
    mov dl,32
    mov ah,2 
   int 21h

    mov dl,84
    mov ah,2 
   int 21h

   mov dl,10
    mov ah,2 
   int 21h

;   T T
  mov dl,32
    mov ah,2 
   int 21h
   
    mov dl,32
    mov ah,2 
   int 21h
   
    mov dl,84
    mov ah,2 
   int 21h

    mov dl,32
    mov ah,2 
   int 21h


    mov dl,84
    mov ah,2 
   int 21h


   mov dl,10
    mov ah,2 
   int 21h

  ;  T T T

  mov dl,32
    mov ah,2 
   int 21h
   
    mov dl,84
    mov ah,2 
   int 21h

    mov dl,32
    mov ah,2 
   int 21h


    mov dl,84
    mov ah,2 
   int 21h

   mov dl,32
    mov ah,2 
   int 21h


    mov dl,84
    mov ah,2 
   int 21h


   mov dl,10
    mov ah,2 
   int 21h

;  T T T T

  
   
    mov dl,84
    mov ah,2 
   int 21h

    mov dl,32
    mov ah,2 
   int 21h


    mov dl,84
    mov ah,2 
   int 21h

   mov dl,32
    mov ah,2 
   int 21h


    mov dl,84
    mov ah,2 
   int 21h

   mov dl,32
    mov ah,2 
   int 21h


    mov dl,84
    mov ah,2 
   int 21h
   
   mov dl,10
    mov ah,2 
   int 21h


  mov ah,4ch
  int 21h
 main endp

 end main