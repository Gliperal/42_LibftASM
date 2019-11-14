global _ft_strlen

section .text
_ft_strlen:
	mov		rax, -1
loop:
	inc		rax
	mov		dl, byte [rdi]
	inc		rdi
	cmp		dl, 0
	jne		loop
	ret
