.global _start
_start:
	
	MOV r0, #2
	MOV r1, #4
	CMP r0, r1
	
	/*
	This instruction is executed only if the prev CMP instruction
	result is less than
	*/
	ADDLT r2, #1 // 1 added 2 r2 only if result is less than
	// MOVGE move greater than or equal to