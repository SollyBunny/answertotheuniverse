//usr/bin/as -o main.o main.asm && ld -o main main.o && ./main && rm -f main main.o && exit
.section .data
	number:
		.ascii "7\n"
.section .text
.globl _start
_start:
	# Write the number to standard output
	mov $4, %eax            # System call number for write
	mov $1, %ebx            # File descriptor 1 (stdout)
	mov $number, %ecx       # Address of the number string
	mov $2, %edx            # Length of the string
	int $0x80               # Execute the system call
	# Exit the program
	mov $1, %eax            # System call number for exit
	xor %ebx, %ebx          # Exit status 0
	int $0x80               # Execute the system call
