.model small
.stack 100h
.data
  arr1 db 'A','h','m','a','d','$'
  arr2 db 'M','a','s','o','o','d','$'
  arr3 db 'G','o','n','d','a','l','$'

.code
main proc
           mov  ax,@data
           mov  ds,ax

           lea  si,arr1
           call _PRT_STR

           lea  si,arr2
           call _PRT_STR

           lea  si,arr3
           call _PRT_STR
           
           mov  ah,4ch
           int  21h
main endp

_PRT_STR proc
           mov  ah,2
  loop1:   
           mov  dl,[si]
           int  21h

           inc  si

           mov  dl,[si]
           cmp  dl,'$'

           jne  loop1

           mov  dl,10
           int  21h

           ret
_PRT_STR endp

end main
