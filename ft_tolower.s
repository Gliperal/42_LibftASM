global _ft_tolower

section .text
_ft_tolower:
	mov		rax, rdi
	cmp		rax, 'A'
	jl		return
	cmp		rax, 'Z'
	jg		return
	or		rax, 0b100000
return:
	ret
