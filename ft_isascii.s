global _ft_isascii

section .text
_ft_isascii:
	xor		eax, eax
	cmp		edi, 0
	setge	al
	cmp		edi, 0q177
	setle	dl
	and		al, dl
	ret
