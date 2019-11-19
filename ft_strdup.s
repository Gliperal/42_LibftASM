global _ft_strdup
extern _ft_strlen
extern _malloc

section .text
_ft_strdup:
	push	rbx
	push	r12
	push	r13

	mov		rbx, rdi
	call	_ft_strlen

	inc		rax
	mov		r12, rax
	mov		rdi, rax
	call	_malloc

	cmp		rax, 0
	je		return

	mov		rdi, rax
	mov		rsi, rbx
	mov		rcx, r12
	cld
	repne movsb

return:
	pop		r13
	pop		r12
	pop		rbx
	ret
