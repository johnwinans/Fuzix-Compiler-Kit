
		.export __muldec
		.setcpu 8080
		.code

;
;	L * E into HL
;


__muldec:
	push	b
	mov	d,l		; now D * E
	lxi	l,0		; into HL
	mvi	b,8
next:
	mov	a,d
	rar
	mov	d,a
	jnc	noadd
	mov	a,h
	add	e
	mov	h,a
noadd:	mov	a,h
	rar
	mov	h,a
	mov	a,l
	rar
	mov	l,a
	dcr	b
	jnz	next
	pop	b
	ret

