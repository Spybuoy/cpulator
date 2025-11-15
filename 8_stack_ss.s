.global _start
_start:
	MOV r0, #0
	MOV r1, #1
	PUSH {r0, r1} // pushes r0, r1 onto stack
	BL get_value // branch to get_value, save in lr
	POP {r0,r1}
	B end
	
get_value:
	// The following overwrites
	mov r0, #5
	mov r1, #6
	add r2, r1, r0
	BX lr // back to link reg

end:
	