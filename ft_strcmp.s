global _ft_strcmp
extern _ft_strlen

section .text
_ft_strcmp:
	; strlen of rdi (which doesn't modify rsi so we're okie-dokie)
	push	rdi
	call	_ft_strlen

	; strlen of rsi (which doesn't modify rdx either)
	mov		rdx, rax
	mov		rdi, rsi
	call	_ft_strlen

	; restore rdi and store min strlen in rcx
	cmp		rax, rdx
	jle		label
	mov		rax, rdx
	label:
	mov		rcx, rax
	pop		rdi

	; strcmp
	inc		rcx
	cld
	repe cmpsb
	xor		rax, rax
	xor		rdx, rdx
	mov		al, [rdi - 1]
	mov		dl, [rsi - 1]
	sub		rax, rdx
	ret
