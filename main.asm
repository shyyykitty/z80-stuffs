ORG 0

.main
	LD A, (0xAAAA)
	LD (0x5555), A
	JP main

DS 0x38 - $, 0

ASSERT $ == 0x38, "Main subroutine must be <= 56 bytes"

.interrupt_handler
	call some_subroutine
	EI
	RETI

.some_subroutine

	ADD A, 12
	RET

