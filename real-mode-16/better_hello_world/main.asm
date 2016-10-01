[org 0x7C00]

mov BX, the_str
call printstr
jmp $

printstr:
; Init phase
	pusha
	mov AH, 0x0E
	mov SI,0

	print_loop:
		mov AL, [BX+SI]
		cmp AL, 0
		je print_loop_end
		int 0x10
		inc SI
	jmp print_loop
	print_loop_end:
	popa
	ret

the_str: db 'Booting Keshiba OS... Complete',0

times 510-($-$$) db 0
dw 0xaa55
