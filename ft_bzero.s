global _ft_bzero

section .text
_ft_bzero:
	mov		rcx, rsi
	jecxz	loop_end
loop_start:
	mov		byte [rdi], 0
	inc		rdi
	loop	loop_start
loop_end:
	xor		rax, rax
	ret
