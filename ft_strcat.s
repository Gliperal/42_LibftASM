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
	cld
loop2:
	movsb
	cmp		byte [rdi - 1], 0
	jne		loop2
	ret
