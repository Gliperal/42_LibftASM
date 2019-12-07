global _ft_isspace

section .text
_ft_isspace:
	xor		rax, rax
	cmp		rdi, ' '
	je		space
	cmp		rdi, 9 ; \t
	jl		nospace
	cmp		rdi, 13 ; \r
	jg		nospace
	space:
	mov		rax, 1
	nospace:
	ret
