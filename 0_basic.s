.global _start // _start label's global
_start: // label
	// r7 stores info about system calls
	MOV r0, #1234 // opcode dest, src
	MOV r1, #0xFFFF
	
	MOV r7, #1 // Exits
	SWI 0 // S/W INTR, looks at r7, if #1 then exit
	