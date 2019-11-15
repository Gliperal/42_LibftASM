global _ft_memset

section .text
_ft_memset:
	mov		rax, rsi
	mov		rcx, rdx
	mov		rdx, rdi
	repnz stosb
	mov		rax, rdx
	ret
