global _ft_strcat

section .text
_ft_strcat:
	mov		rax, rdi
	jmp		loop1_body
loop1_step:
	inc		rdi
loop1_body:
	cmp		byte [rdi], 0
	jne		loop1_step
	jmp		loop2_body
loop2_step:
	inc		rdi
	inc		rsi
loop2_body:
	mov		dl, [rsi]
	mov		[rdi], dl
	cmp		byte [rdi], 0
	jne		loop2_step
	ret
