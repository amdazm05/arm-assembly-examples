.global main

main:
	mov x0,#1
	ldr x1,=hello
	ldr x2,=len
	mov w8,#6
	svc 0	

	mov x0,#0
	mov w8,#93
	svc 0
.data
hello: .ascii "Hello World\n"
len= . -hello
