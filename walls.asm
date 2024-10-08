IDEAL
MODEL small
P486
STACK 100h

DATASEG

CODESEG
;bx=y mishbatozt
;cx=x mishbatozt
proc walldrawer
	mov ax,320 
	mul bx
	add ax,cx
	shl ax, 2
	mov bx,ax
	mov [dw es:bx], 15

    ret
endp
start:
	mov ax, @data
	mov ds, ax

	mov ax, 13h
	int 10h

	mov ax, 0a000h
	mov es, ax

	mov bx, 49
	mov cx, 79
	call walldrawer
    
exit:
	mov ax, 4c00h
	int 21h
END start
