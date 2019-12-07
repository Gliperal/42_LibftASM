global _ft_strlower

section .text
	_ft_strlower:
	loop:
		cmp		byte [rdi], 0
		je		end
		mov		al, [rdi]
		cmp		al, 'A'
		jl		next
		cmp		al, 'Z'
		jg		next
		or		byte [rdi], 0b100000
		next:
		inc		rdi
		jmp		loop
	end:
	ret
