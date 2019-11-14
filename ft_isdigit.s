global _ft_isdigit

section .text
_ft_isdigit:
	xor		eax, eax
	cmp		edi, '0'
	setge	al
	cmp		edi, '9'
	setle	dl
	and		al, dl
	ret
