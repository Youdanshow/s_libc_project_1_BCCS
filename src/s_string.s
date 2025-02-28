	.text
	.globl s_strlen
s_strlen:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %esi       # Adresse de la chaîne
    xorl %eax, %eax          # compteur = 0
strlen_loop:
    movb (%esi, %eax), %dl   # Charger le caractère courant
    cmpb $0, %dl             # Fin de chaîne ?
    je strlen_end
    incl %eax
    jmp strlen_loop
strlen_end:
    popl %ebp
    ret

	.globl s_strcpy
s_strcpy:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %edi       # Destination
    movl 12(%ebp), %esi      # Source
strcpy_loop:
    movb (%esi), %al
    movb %al, (%edi)
    cmpb $0, %al
    je strcpy_end
    incl %esi
    incl %edi
    jmp strcpy_loop
strcpy_end:
    popl %ebp
    ret

	.globl s_strncpy
s_strncpy:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %edi       # Destination
    movl 12(%ebp), %esi      # Source
    movl 16(%ebp), %ecx      # Nombre de caractères à copier
    testl %ecx, %ecx
    jz strncpy_end
strncpy_loop:
    movb (%esi), %al
    movb %al, (%edi)
    cmpb $0, %al
    je strncpy_pad
    incl %esi
    incl %edi
    decl %ecx
    jnz strncpy_loop
    jmp strncpy_end
strncpy_pad:
pad_loop:
    movb $0, (%edi)
    incl %edi
    decl %ecx
    jnz pad_loop
strncpy_end:
    popl %ebp
    ret

	.globl s_strcat
s_strcat:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %edi       # Destination
    movl 12(%ebp), %esi      # Source
find_end:
    movb (%edi), %al
    cmpb $0, %al
    je cat_copy
    incl %edi
    jmp find_end
cat_copy:
copy_loop:
    movb (%esi), %al
    movb %al, (%edi)
    cmpb $0, %al
    je strcat_end
    incl %esi
    incl %edi
    jmp copy_loop
strcat_end:
    popl %ebp
    ret

	.globl s_strncat
s_strncat:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %edi       # Destination
    movl 12(%ebp), %esi      # Source
    movl 16(%ebp), %ecx      # Nombre max de caractères à copier
find_end_ncat:
    movb (%edi), %al
    cmpb $0, %al
    je ncat_copy
    incl %edi
    jmp find_end_ncat
ncat_copy:
    testl %ecx, %ecx
    jz ncat_end
copy_n_loop:
    movb (%esi), %al
    cmpb $0, %al
    je ncat_finish
    movb %al, (%edi)
    incl %esi
    incl %edi
    decl %ecx
    jnz copy_n_loop
ncat_finish:
    movb $0, (%edi)
ncat_end:
    popl %ebp
    ret

	.globl s_strcmp
s_strcmp:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %esi      # Première chaîne
    movl 12(%ebp), %edi     # Deuxième chaîne
strcmp_loop:
    movzbl (%esi), %eax     # Charger octet de s1 (étendu)
    movzbl (%edi), %ecx     # Charger octet de s2 (étendu)
    cmp %eax, %ecx
    jne not_equal
    test %eax, %eax         # Fin de chaîne ?
    je equal
    incl %esi
    incl %edi
    jmp strcmp_loop
not_equal:
    sub %ecx, %eax          # Différence (s1 - s2)
    jmp end_strcmp
equal:
    movl $0, %eax
end_strcmp:
    popl %ebp
    ret

	.globl s_strncmp
s_strncmp:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %esi      # Première chaîne
    movl 12(%ebp), %edi     # Deuxième chaîne
    movl 16(%ebp), %edx     # Nombre de caractères à comparer
strncmp_loop:
    testl %edx, %edx
    jz nstr_equal
    movzbl (%esi), %eax     # Charger octet de s1
    movzbl (%edi), %ecx     # Charger octet de s2
    cmp %eax, %ecx
    jne nstr_diff
    test %eax, %eax
    je nstr_equal
    incl %esi
    incl %edi
    decl %edx
    jmp strncmp_loop
nstr_diff:
    sub %ecx, %eax         # Différence
    jmp nstr_end
nstr_equal:
    movl $0, %eax
nstr_end:
    popl %ebp
    ret

	.globl s_strchr
s_strchr:
    pushl %ebp
    movl %esp, %ebp
    movl 8(%ebp), %eax      # Adresse de la chaîne
    movl %eax, %esi        # Pointeur sur la chaîne
    movl 12(%ebp), %edx     # Caractère recherché (int)
chr_loop:
    movb (%esi), %al
    cmpb %dl, %al
    je chr_found
    cmpb $0, %al
    je chr_not_found
    incl %esi
    jmp chr_loop
chr_found:
    movl %esi, %eax
    jmp chr_end
chr_not_found:
    movl $0, %eax
chr_end:
    popl %ebp
    ret

