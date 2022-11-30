; This is an assembly program that will display the message "Hello World" on the screen. 
; The program is written in assembly language and is compiled using the MASM assembler. 
; The program is written in assembly language and is compiled using the MASM assembler.

section	.text          ; This is the code section 
	global _start       ; This is the entry point of the program must be named _start 
_start:                     ;it tells linker entry point of the program
	mov	edx, len    ;This is message length 
	mov	ecx, msg    ;this message to write
	mov	ebx, 1	    ;this file descriptor (stdout)
	mov	eax, 4	    ;this system call number (sys_write)
	int	0x80        ;this is call kernel
	mov	eax, 1	    ;this is system call number (sys_exit)
	int	0x80        ;this is call kernel

section	.data         ; This is the data section

msg	db	'Hello, world!',0xa	;our dear string
len	equ	$ - msg			;length of our dear string
