dosseg
 .model small
  .stack 100h
  .data

  .code
    main proc

   mov dl,65
    mov cl,26
  loop1:

     mov ah,2     
      int 21h

     add dl,1
    
   
     LOOP loop1
    

    
     mov ah,4ch
     int 21h
    
    
    main endp
 end main
