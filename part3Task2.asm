;*******
;******
;*****
;****
;***
;**
;*
dosseg
 .model small
  .stack 100h
.data
    var1 db 'ENETR A NUMBER: $'
.code
main proc
   
              mov ax,@data
              mov ds,ax

              lea dx,var1      ; show msg
              mov ah,9
              int 21h

              mov ah,1         ;take number
              int 21h
              sub al,48        ;for ascii

              mov ch,al        ;move to ch for outer loop

              mov dl,10        ;next line
              mov ah,2
              int 21h

    upperloop:

   
              mov cl,1         ;innerloop iteration
   
              mov dl,42        ;ascii of *
              
    innerloop:

              mov ah,2
              int 21h

              inc cl
 
              cmp cl,ch
              jle innerloop

              mov dl,10        ;for next line
              mov ah,2
              int 21h


              dec ch
              jnz upperloop
    
      
              mov ah,4ch
              int 21h
    
    
main endp
 end main
