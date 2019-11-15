global _ft_strlen

section .text
_ft_strlen:
	xor		rax, rax
	mov		rcx, -1
	cld
	repne scasb
	add		rcx, 2
	sub		rax, rcx
	ret
