.include "defs.h"

.section .bss
count: .quad 0
b: .byte 0

.section .data
.section .text
.global _start

newline:
.byte '\n'

_start:
	movq $SYS_READ, %rax
	movq $STDIN, %rdi
	movq $b, %rsi 
	movq $count, %rbx
	addq (%rbx), %rsi
	movq $1, %rdx
	syscall
        addb $13, (%rsi)
	incq (%ebx)
	cmpq $0x17, (%rsi)
	jne _start
	subq (%rbx), %rsi
loop:
	movq $SYS_WRITE, %rax
	movq $STDOUT, %rdi
	movq $1, %rdx
	syscall
	decq (%ebx)
	incq %rsi
	cmpq $0, (%ebx)
	jne loop
end:
	movq $SYS_WRITE, %rax
	movq $STDOUT, %rdi
	movq $newline, %rsi
	movq $1, %rdx
	syscall

	movq $SYS_EXIT, %rax
	syscall
