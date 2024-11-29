.global main
main:
	mov x1,#'O'
	mov x2,#'R'
	mov x3,#'R'
	mov x4,#'T'
	mov x5,#'E'
	mov x6,#'Z'


	ldr x10,=words
	str x1,[x10]
	add x10,x10,#1
	str x4,[x10]
	add x10,x10,#1
	str w4,[x10]
	add x10,x10,#1
	str x5,[x10]
	add x10,x10,#1
	strb w2,[x10]

	mov x0,#1
	ldr x1,=words
	ldr x2,=lenw
	mov w8,#64
	svc 0	

	mov x0,#0
	mov w8,#93
	svc 0

.data
words: .ascii "Hello \n"
lenw= . -words
