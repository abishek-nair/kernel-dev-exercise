mov AH, 0x0E

mov AL, 'H'
int 0x10
mov AL, 'e'
int 0x10
mov AL, 'l'
int 0x10
mov AL, 'l'
int 0x10
mov AL, 'o'
int 0x10
mov AL, ' '
int 0x10
mov AL, 'W'
int 0x10
mov AL, 'o'
int 0x10
mov AL, 'r'
int 0x10
mov AL, 'l'
int 0x10
mov AL, 'd'
int 0x10
mov AL, '!'
int 0x10

jmp $

times 510-($-$$) db 0
dw 0xaa55
