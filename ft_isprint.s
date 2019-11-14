global _ft_isprint

section .text
_ft_isprint:
	xor		rax, rax
	cmp		rdi, 0q40
	setge	al
	cmp		rdi, 0q176
	setle	dl
	and		al, dl
	ret
