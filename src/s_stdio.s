	.text
	.globl s_puts
s_puts:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %ecx      # Adresse de la chaîne
    # Utilisation de s_strlen pour obtenir la longueur
    pushl %ecx
    call s_strlen
    addl $4, %esp
    movl %eax, %edx        # Longueur de la chaîne
    movl $1, %ebx          # Descripteur stdout
    movl $4, %eax          # Syscall sys_write
    int $0x80
    movl $0, %eax
    popl %ebp
    ret

	.globl s_fopen
s_fopen:
    pushl %ebp
    movl %esp, %ebp
    xorl %eax, %eax       # Stub : retourne 0
    popl %ebp
    ret

	.globl s_fread
s_fread:
    pushl %ebp
    movl %esp, %ebp
    xorl %eax, %eax       # Stub : retourne 0
    popl %ebp
    ret

	.globl s_fwrite
s_fwrite:
    pushl %ebp
    movl %esp, %ebp
    xorl %eax, %eax       # Stub : retourne 0
    popl %ebp
    ret

	.globl s_fclose
s_fclose:
    pushl %ebp
    movl %esp, %ebp
    xorl %eax, %eax       # Stub : retourne 0
    popl %ebp
    ret

