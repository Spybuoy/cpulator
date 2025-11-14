.global _start
_start:
	MOV r0, #10
	MOV r1, #4
	ADD r2, r1, r0 // des, op1, op2
	MUL r3, r1, r0
	SUB r4, r1, r0
	
	// sets CPSR register, use for neg numbers
	// Sets N in NZCVI SVC if result is neg
	SUBS r5, r1, r0 
	
	// ADDS to be used for overflow, set C carry flag
	// ADC add, carry
	