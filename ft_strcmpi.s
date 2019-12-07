global _ft_strcmpi

section .text
	next:
	inc		rdi
	inc		rsi
_ft_strcmpi:
	; check for end of either string
	cmp		byte [rdi], 0
	je		end
	cmp		byte [rsi], 0
	je		end

	; if the two characters match, continue
	mov		al, [rdi]
	cmp		al, [rsi]
	je		next

	; if it's not a letter, return the diff
	or		al, 0b00100000
	cmp		al, 'a'
	jl		end
	cmp		al, 'z'
	jg		end

	; if it is a letter, do a case-insensitive match
	xor		al, [rsi]
	and		al, 0b11011111
	cmp		al, 0
	je		next

end:
	xor		rax, rax
	xor		rdx, rdx
	mov		al, [rdi]
	mov		dl, [rsi]
	sub		rax, rdx
	ret



;A 0x41	1000001
;Z 0x5A	1011010
;a 0x61	1100001
;z 0x7A	1111010
;
;[ 0x5B	1011011
;{ 0x7B	1111011

