global _ft_isprint

section .text
_ft_isprint:
	xor		eax, eax
	cmp		edi, 0q40
	setge	al
	cmp		edi, 0q176
	setle	dl
	and		al, dl
	ret
