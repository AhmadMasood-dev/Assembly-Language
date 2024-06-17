;ASCII codes 80h to FFh. Display 10 characters per line
dosseg
.model small
.stack 100h
.data
    var1 db ?
.code
main proc


              mov  ax,@data
              mov  ds,ax
              mov  dl,80h
              mov  cx,128
    loop1:    
              mov  ah,2
              int  21h
              add  bl,1
              add  dl,1
              call forSpace
              LOOP loop1

              mov  ah,4ch
              int  21h


main endp
forSpace PROC
              cmp  bl,10
              je   giveSpace
              ret

    giveSpace:
              mov  cl,dl
              mov  dl,10
              mov  ah,2
              int  21h
              mov  bl,0
              mov  dl,cl
              ret
forSpace ENDP
 end main