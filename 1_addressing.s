.global _start
_start:
	// Load data from stack onto registers
	// Direct addressing mode
	LDR r0, =list
	
	// Load data into r1 the value which exists address r0
	// Indirect addressing mode
	LDR r1, [r0] 
	
	LDR r2, [r0, #4] // loads [r0] addr + 4
	LDR r3, [r0, #8] // loads [r0] addr + 8
	
	//preincrement
	LDR r4, [r0, #12]! // loads [r0] addr + 12
	
	//postincrement
	LDR r5, [r0], #4  
	
.data
list:
	// word is max, 32 in this case
	// half word is half, 16 in this case
	.word	10,20,30,20,10,0,-10
	