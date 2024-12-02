.global main
.equ _EXIT,93 
.equ _WRITE,64
.equ ITERATIONS_,7
main:
    ldr x0, =instr
    ldr x1, =outstr
    mov x4,#0
loop:
    ldrb w3,[x0]  //load r0 address value to x3
    strb w3,[x1]  //value of x3 into the address of r1
    add  x1,x1,1 //inc
    add  x0,x0,1
    add  x4,x4,1 //inc
    cmp  x4,ITERATIONS_
    b.ne loop
print:
    mov x0,1 
    ldr x1, =outstr
    ldr x2, =len
    mov x8, _WRITE
    svc 0
exit:
    mov x0,0
    mov x8,_EXIT
    svc 0

    
.data
instr: .ascii "Somethi"
len= .-instr
outstr: .fill 7,1,0 //7 bytes // repitions //fill value