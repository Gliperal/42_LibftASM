global _ft_isalpha

section .text
_ft_isalpha:
	xor		rax, rax
	or		rdi, 0b100000
	cmp		rdi, 'a'
	setge	al
	cmp		rdi, 'z'
	setle	dl
	and		al, dl
	ret
