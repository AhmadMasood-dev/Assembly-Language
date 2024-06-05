dosseg
 .model small
 .stack 100h
.data
    var1 db 'ZAIN$'
.code
main proc
          mov  ax,@data
          mov  ds,ax
          mov  cx,3
    Print:
          call _PRT_STR
    
          LOOP Print
          mov  ah,4ch
          int  21h
main endp
    
_PRT_STR PROC
          lea  dx,var1
          mov  ah,9
          int  21h
          ret
_PRT_STR ENDP
     
     
  end main
