global _ft_isalpha

section .text
_ft_isalpha:
	xor		eax, eax
	cmp		edi, 'a'
	setge	al
	cmp		edi, 'Z'
	setle	dl
	or		al, dl
	cmp		edi, 'A'
	setge	dl
	and		al, dl
	cmp		edi, 'z'
	setle	dl
	and		al, dl
	ret
