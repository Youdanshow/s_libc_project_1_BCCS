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
    je div_error           # Division par zéro
    cltd                   # Sign-extension de EAX dans EDX:EAX
    idivl %ecx
    popl %ebp
    ret

div_error:
    xorl %eax, %eax        # Retourne 0 en cas d'erreur
    popl %ebp
    ret

    .globl s_pow
s_pow:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %eax     # base
    movl 12(%ebp), %ecx    # exposant
    movl $1, %edx          # Résultat initial = 1
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
    pushl %ebp
    movl %esp, %ebp

    movl 8(%ebp), %eax   # Récupère l'argument x
    # Si x < 0 ou x > 5, on renvoie 0
    cmp $0, %eax
    jl exp_out_range
    cmp $5, %eax
    jg exp_out_range

    # Comparer x aux valeurs 0..5
    cmp $0, %eax
    je exp_case0
    cmp $1, %eax
    je exp_case1
    cmp $2, %eax
    je exp_case2
    cmp $3, %eax
    je exp_case3
    cmp $4, %eax
    je exp_case4
    # Sinon c'est 5
    jmp exp_case5

exp_case0:
    movl $1, %eax       # e^0 ≈ 1
    jmp exp_done
exp_case1:
    movl $2, %eax       # e^1 ≈ 2
    jmp exp_done
exp_case2:
    movl $7, %eax       # e^2 ≈ 7
    jmp exp_done
exp_case3:
    movl $20, %eax      # e^3 ≈ 20
    jmp exp_done
exp_case4:
    movl $54, %eax      # e^4 ≈ 54
    jmp exp_done
exp_case5:
    movl $148, %eax     # e^5 ≈ 148
    jmp exp_done

exp_out_range:
    xorl %eax, %eax     # pour x < 0 ou x > 5 => 0

exp_done:
    popl %ebp
    ret
