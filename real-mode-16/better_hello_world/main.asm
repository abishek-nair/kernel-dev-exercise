[org 0x7C00]

; Init phase
mov AH, 0x0E
mov SI,0

print_loop:
	mov AL, [the_str+SI]
	cmp AL, 0
	je print_loop_end
	int 0x10
	inc SI
	jmp print_loop

print_loop_end:
	jmp $

the_str: db 'Booting Keshiba OS... Complete\nHuhuhaha',0

times 510-($-$$) db 0
dw 0xaa55
