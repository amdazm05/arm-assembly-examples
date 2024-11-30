.global main

main:
    mov x0, #1              // File descriptor 1 (stdout)
    ldr x1, =hello          // Address of the string
    ldr x2, =len            // Length of the string
    mov w8, #64             // Syscall number for write
    svc 0                   // Make the syscall

    mov x0, #0              // Exit code 0
    mov w8, #93             // Syscall number for exit
    svc 0                   // Make the syscall

.data
hello: .ascii "Hello World\n"
len = . - hello