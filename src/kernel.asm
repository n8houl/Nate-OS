bits 32
section 	.text
	align	4
	dd	0x1BADB002
	dd	0x00
	dd	- (0x1BADB002 + 0x00)

global start
extern kmain		; This function located in kernel.c
start:
	cli		; Clears interrupts
	call kmain	; Continue executionf from kernel.c in kmain
	hlt		; Halt execution

