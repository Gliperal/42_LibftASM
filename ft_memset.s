global _ft_memset

section .text
_ft_memset:
	mov		rax, rsi
	mov		rcx, rdx
	mov		rbx, rdi
	repnz stosb
	mov		rax, rbx
	ret
