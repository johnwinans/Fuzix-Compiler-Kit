;
;	Compare r0-r3 with r12-r15
;
	.export __ccneconstl
	.export __ccneconstbl
	.export __ccneconst0l
	.code

__ccneconst0l:
	or	r12,r13
	or	r12,r14
	or	r12,r15
	jr	nz, true
	clr	r2
	clr	r3
	ret
__ccneconstbl:
	clr	r12
	clr	r13
	clr	r14
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
