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
