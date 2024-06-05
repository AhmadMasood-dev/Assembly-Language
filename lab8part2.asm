dosseg
.model small
.stack 100h
.data
    rectangleHeight db 3
    rectanglewidth  db 8
    rectangleArea   dw ?
    
    squarewidth     db 5
    squareHeight    db 5
    squareArea      dw ?

    msg1            db 'Area of rectangle is : $'
    msg2            db 'Area of sqaure is : $'


.code

main proc
                  mov  ax,@data
                  mov  ds,ax

                  mov  al,rectangleHeight
                  mov  bl,rectanglewidth
                  mul  bl                    ;;result store to ax
                  mov  rectangleArea,ax

                  mov  al,squareHeight
                  mov  bl,squarewidth
                  mul  bl                    ;result store to ax
                  mov  squareArea,ax

                  lea  dx,msg1
                  mov  ah,9
                  int  21h

                  mov  ax,rectangleArea
                  call _print_result

                  mov  dl,10
                  mov  ah,2
                  int  21h

                  lea  dx,msg2
                  mov  ah,9
                  int  21h


                  mov  ax,squareArea
                  call _print_result

                  mov  ah,4ch
                  int  21h

_print_result proc
                  mov  cx, 0

    firstLoop:    
                  mov  dx, 0
                  mov  bx, 10
                  DIV  bx                    ; Divides AX by 10
                  PUSH dx                    ; Push the remainder to stack
                  INC  CX
                  CMP  AX, 0
                  JNE  firstLoop


    LOOP2:        
                  POP  dx
                  ADD  dx, '0'
                  mov  AH,2
                  INT  21H
                  LOOP LOOP2
                  ret
_print_result endp
    
                  mov  ah,4ch
                  int  21h
main endp
end main