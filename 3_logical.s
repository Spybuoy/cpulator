.global _start
_start:
	MOV r0, #0x5555
	MOV r1,	#0xAAAA
	AND r2, r1, r0 // AND
	ANDS r3, r1, r0 // sets flags
	ORR r4, r1, r0 // OR
	EOR r4, r1, r0 // Exclusive OR
	//MVN // Move then negate
	//LSL // Logical shift left
	//LSR // Logical shift right
	
	