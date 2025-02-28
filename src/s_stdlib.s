	.text
	.globl s_atoi
s_atoi:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %esi    # Pointeur sur la chaîne
    xorl %eax, %eax       # Résultat = 0
atoi_loop:
    movzbl (%esi), %ecx   # Charger le caractère en ECX avec extension nulle
    testl %ecx, %ecx      # Fin de chaîne ?
    je atoi_end
    subl $'0', %ecx       # Convertir le caractère en chiffre
    imull $10, %eax       # Multiplier le résultat par 10
    addl %ecx, %eax       # Ajouter le chiffre courant
    incl %esi
    jmp atoi_loop
atoi_end:
    popl %ebp
    ret

	.globl s_exit
s_exit:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %ebx    # Code de sortie
    movl $1, %eax         # Syscall sys_exit
    int $0x80
    popl %ebp
    ret

