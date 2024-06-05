
dosseg
.model small
.stack 100h
.data
  var1 db 'Ahmad$'
  var2 db 'Masood$'
  var3 db 'Gondal$'
.code
main proc
           mov  ax, @data
           mov  ds, ax

           lea  dx, var1
           call _PRT_STR

           lea  dx, var2
           call _PRT_STR

           lea  dx, var3
           call _PRT_STR

           mov  ah, 4ch
           int  21h

_PRT_STR proc

           mov  ah, 9
           int  21h

           ret
_PRT_STR endp

main endp
end main