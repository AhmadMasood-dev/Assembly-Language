 dosseg
 .model small
  .stack 100h
  .data

  .code
    main proc
   
      
     mov ch,7

     upperloop:

   
       mov cl,1
   
       innerloop:

         mov dl,cl
         add dl,48
         
         mov ah,2
         int 21h

;    mov dl,32
;     mov ah,2 
;    int 21h

       inc cl
 
        cmp cl,ch
        jle innerloop

     mov dl,10  //for next line
      mov ah,2 
      int 21h


   dec ch
     jnz upperloop
    
  
      
     mov ah,4ch
     int 21h
    
    
    main endp
 end main
