global _ft_isalnum
extern _ft_isalpha

section .text
_ft_isalnum:
	cmp		rdi, '0'
	jl		_ft_isalpha
	cmp		rdi, '9'
	jg		_ft_isalpha
	mov		rax, 1
	ret
