global _ft_isascii

section .text
_ft_isascii:
	xor		rax, rax
	cmp		rdi, 0
	setge	al
	cmp		rdi, 0q177
	setle	dl
	and		al, dl
	ret
