// loops prac
.global _start

.equ endlist, 0xaaaaaaaa

_start:
	LDR r0,=list // loads list onto r0
	LDR r12,=endlist // loads endlist onto r12
	LDR r1, [r0] // loads r0's 0th addr onto r1
	ADD r2, r2, r1 
	
loop: // loops throgh list until we get value in r12
	LDR r1, [r0, #4]!
	CMP r1, r12
	BEQ exit // when eq go to exit
	BAL loop // otherwise go back to loop label
	
exit: 

.data
list: 
	.word 1,2,3,4,5,6,7,8,9,10
	

	