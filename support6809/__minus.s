;
;	Until we sort out optimizing this in the compiler proper
;
	.export __minus
	.code

__minus:
	; Subtract D from TOS
	coma
	comb
	addd @one
	addd 2,s
	ldx ,s
	leas 4,s
	jmp ,x
