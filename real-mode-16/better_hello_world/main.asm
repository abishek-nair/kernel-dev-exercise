[org 0x7C00]

jmp main

%include "printstr.asm"

main:
mov BX, the_str
call printstr
jmp $

the_str: db 'Booting Keshiba OS... Complete',0

times 510-($-$$) db 0
dw 0xaa55
