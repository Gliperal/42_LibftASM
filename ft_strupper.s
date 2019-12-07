global _ft_strupper

section .text
	_ft_strupper:
	loop:
		cmp		byte [rdi], 0
		je		end
		mov		al, [rdi]
		cmp		al, 'a'
		jl		next
		cmp		al, 'z'
		jg		next
		and		byte [rdi], 0b1011111
		next:
		inc		rdi
		jmp		loop
	end:
	ret
