global _ft_isdigit

section .text
_ft_isdigit:
	xor		rax, rax
	cmp		rdi, '0'
	setge	al
	cmp		rdi, '9'
	setle	dl
	and		al, dl
	ret
