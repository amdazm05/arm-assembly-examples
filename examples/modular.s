.text 
.globl main
.equ _STD_OUT,1
.equ _WRITE,64
    .type print, @function
    .globl print
print:
    stp lr, xzr, [sp, -16]!

    mov x2,x1
    mov x1,x0
    mov x0,_STD_OUT
    mov x8,_WRITE
    svc #0
    
    ldp     lr, xzr, [sp], 16
    ret

main:
    stp lr, xzr, [sp, -16]!
    ldr x0, =message
    ldr x1, =len
    bl print
    ldp     lr, xzr, [sp], 16
    ret
.data
message: .ascii "Aarch64 \n"
len= .-message
