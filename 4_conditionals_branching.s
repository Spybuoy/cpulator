.global _start
_start:

/*
CPSR (Current Program Status Register) reg flags include condition code flags (N, Z, C, V), 
which indicate the result of an arithmetic and logic unit (ALU) operation, 
and control flags for processor state, such as the interrupt mask bits (I and F), 
the Thumb state bit (T), and the Jazelle state bit (J). 
These flags are used by the processor for conditional execution 
and to manage the current mode of operation
*/

/*
Condition code flags
N (Negative): Set if the result is negative.
Z (Zero): Set if the result is zero.
C (Carry): Set if there is a carry out from the most significant bit.
V (Overflow): Set if an arithmetic overflow occurs.
Q (Saturation): Set if saturation occurs, for example, during a saturation instruction. 
Control flags
M[4:0] (Mode): A 5-bit field that defines the current processor mode (e.g., user, supervisor, interrupt).
I (Interrupt Mask): Disables the IRQ (Interrupt Request).
F (Fast Interrupt Mask): Disables the FIQ (Fast Interrupt Request).
T (Thumb State): Indicates whether the processor is in Thumb state (1) or ARM state (0).
J (Jazelle State): Indicates whether the processor is in Jazelle state (1).
E (Endianness): Controls the endianness for load/store instructions (set for big-endian, cleared for little-endian).
A (Asynchronous Abort Mask): Controls whether asynchronous aborts are disabled
*/

	// conditionals, branches
	// c - results, >, <, ==, etc
	// b - flow of program
	MOV r0, #1
	MOV r1, #2
	CMP r0, r1 // subtracts, 0 eq, +ve r0>, -ve r0<
	
	BGT greater// branch greater than, result +ve then jump to label greater
	BAL default// always exec this branch
	
	greater: 
	MOV r2, #0x5555
	
	default:
	MOV r2, #0xAAAA