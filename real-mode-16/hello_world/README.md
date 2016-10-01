Just following tradition, k?

Use BIOS's capability to print a char to screen by setting the val 0x10 (scrolling tele-type routine) into AX and raising an interrupt.
The ISR then prints the char at AL into screen and then advances the cursor for the next character. 

(Using QEMU)
