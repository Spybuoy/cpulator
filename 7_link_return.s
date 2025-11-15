.global _start
_start:
	
	MOV r0, #2
	MOV r1, #5
	//BAL add2 // branch always to add2
	BL add2// stores addr/PC in link reg LR
	MOV r12, #0xAAAA
	
add2: 
	ADD r2, r0, r1
	bx lr // branch back to lr, return