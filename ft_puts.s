global _ft_puts
extern _ft_strlen

section .data
	newline: db 10
	nullstr: db "(null)", 10

section .text
_ft_puts:
	cmp		rdi, 0
	je		print_null_and_return
	push	rbx
	mov		rbx, rdi
	call	_ft_strlen
	mov		rdi, rbx
	pop		rbx
	mov		rsi, rdi
	mov		rdi, 1
	mov		rdx, rax
	mov		rax, 0x02000004
	syscall
	mov		rax, 0x02000004
	mov		rdi, 1
	lea		rsi, [rel newline]
	mov		rdx, 1
	syscall
	ret

print_null_and_return:
	mov		rax, 0x02000004
	mov		rdi, 1
	lea		rsi, [rel nullstr]
	mov		rdx, 7
	syscall
	ret
