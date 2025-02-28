	.text
	.globl s_abs
s_abs:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %eax     # Valeur en argument
    cmpl $0, %eax
    jge abs_end
    negl %eax
abs_end:
    popl %ebp
    ret

	.globl s_div
s_div:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %eax     # Numérateur
    movl 12(%ebp), %ecx    # Dénominateur
    cmpl $0, %ecx
    je div_error          # Division par zéro
    cltd                  # Sign-extension de EAX dans EDX:EAX
    idivl %ecx
    popl %ebp
    ret
div_error:
    xorl %eax, %eax       # Retourne 0 en cas d'erreur
    popl %ebp
    ret

	.globl s_pow
s_pow:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %eax     # Base
    movl 12(%ebp), %ecx    # Exposant
    movl $1, %edx         # Résultat initial = 1
    cmpl $0, %ecx
    jle pow_end
pow_loop:
    imull %eax, %edx
    decl %ecx
    cmp $0, %ecx
    jne pow_loop
pow_end:
    movl %edx, %eax
    popl %ebp
    ret

	.globl s_exp
s_exp:
    # Stub pour s_exp ; à améliorer si nécessaire
    pushl %ebp
    movl %esp, %ebp
    xorl %eax, %eax
    popl %ebp
    ret

