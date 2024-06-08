
dosseg
 .model small
 .stack 100h
.data

.code
main proc
  
          mov dl,2
          shl dl,1
        
     ;mov dl,2
     ;shr dl,1
       
          add dl,48q
       
          mov ah,2
          int 21h
          mov ah, 4ch
          int 21h
   
main endp
   end main