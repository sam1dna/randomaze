IDEAL
MODEL small
P486
STACK 100h

DATASEG
s1 DB 'Hello, World!',13,10, '$'

CODESEG

start:
	mov ax, @data
	mov ds, ax

	lea dx, [s1]
	mov ah, 09h
	int 21h
exit:
	mov ax, 4c00h
	int 21h
END start