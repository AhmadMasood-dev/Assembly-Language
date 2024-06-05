dosseg
 .model small
 .stack 100h
.data
    var1 db 1,2,3
.code
main proc
          mov  ax,@data
          mov  ds,ax
          mov  si,offset var1
          mov  cx,3
    loop1:
          mov  dx,[SI]
          add  dx,48
          mov  ah,2
          int  21h
          inc  si
          LOOP loop1
          mov  ah,4ch
          int  21h
main endp
     
     
  end main