loop_trap:
	jmp loop_trap

times 510-($-$$) db 0

dw 0xaa55
