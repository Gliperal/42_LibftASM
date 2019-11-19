global _ft_cat

section .bss
buffsize	equ 1024
buff:		resb buffsize

section .text
_ft_cat:
	; error check
	cmp		edi, 0
	jl		loop_end
	; save fd for later use
	; set rsi, which is the same for read and write
	mov		r8, rdi
	lea		rsi, [rel buff]
loop:
	; read into buff
	mov		rdi, r8
	mov		rdx, buffsize
	mov		rax, 0x02000003
	syscall
	; check for read end / fail
	cmp		rax, 0
	jle		loop_end
	; write from buff
	mov		rdi, 1
	mov		rdx, rax
	mov		rax, 0x02000004
	syscall
	; repeat
	jmp		loop
loop_end:
	ret
