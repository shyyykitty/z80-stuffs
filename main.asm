ORG 0

.main
	LD A, (0x00F0)
	LD A, (0x000F)
	JP main

;DS 0x38 - $, 0

;ASSERT $ == 0x38

;.interrupt_handler
;	call some_subroutine
;	EI
;	RETI
;
;.some_subroutine
;
;	ADD A, 12
;	RET

