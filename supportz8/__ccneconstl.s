;
;	Compare r0-r3 with r12-r15
;
	.export __ccneconstl
	.code

__ccneconstl:
	cp	r0,r12
	jr	nz,true
	cp	r1,r13
	jr	nz,true
	cp	r2,r14
	jr	nz,true
	cp	r3,r15
	jr	nz,true
	clr	r2
	xor	r3,r3
	ret
true:
	clr	r2
	ld	r3,#1
	or	r3,r3	
	ret
