;
;	Comparison between top of stack and ac
;

	.export __ccltl
	.export __ccltul
	.code

__ccltul:
	ld r14,254
	ld r15,255
	incw rr14
	incw rr14
	lde r12,@rr14
	cp r12,r0
	jr ult,true
	jr nbyte
__ccltl:
	ld r14,254
	ld r15,255
	incw rr14
	incw rr14	; point to data
	lde r12,@rr14
	cp r12,r0
	jr lt,true
nbyte:
	jr nz,false
	incw rr14
	lde r12,@rr14
	cp r12,r1
	jr ult,true
	jr nz,false
	incw rr14
	lde r12,@rr14
	cp r12,r2
	jr ult,true
	jr nz,false
	incw rr14
	lde r12,@rr14
	cp r12,r3
	jr ult,true
false:
	clr r3
out:
	clr r2
	pop r14		; return address
	pop r15
	add 255,#4
	adc 254,#0
	push r15
	push r14
	or r3,r3	; get the flags right
	ret
true:
	ld r3,#1
	jr out
