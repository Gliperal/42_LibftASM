global _ft_toupper

section .text
_ft_toupper:
	mov		rax, rdi
	cmp		rax, 'a'
	jl		return
	cmp		rax, 'z'
	jg		return
	and		rax, 0b1011111
return:
	ret
