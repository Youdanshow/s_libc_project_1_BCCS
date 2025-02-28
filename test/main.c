#include <stdio.h>
#include "s_string.h"
#include "s_math.h"
#include "s_stdio.h"
#include "s_stdlib.h"

int main() {
    char str1[50] = "Hello";
    char str2[50] = " World!";
    char dest[100] = "";
    char dest2[100] = "";
    int len, cmp_res, cmpn_res, abs_val, div_val, pow_val, exp_val, atoi_val;
    char *chr;

    // Test s_strlen
    len = s_strlen(str1);
    printf("s_strlen: %d\n", len);

    // Test s_strcpy
    s_strcpy(dest, str1);
    printf("s_strcpy: %s\n", dest);

    // Test s_strncpy : copier au maximum 3 caractères de "World" dans dest2
    s_strncpy(dest2, "World", 3);
    printf("s_strncpy: %s\n", dest2);

    // Test s_strcat
    s_strcat(dest, str2);
    printf("s_strcat: %s\n", dest);

    // Test s_strncat : concaténer au maximum 3 caractères de " Everyone" à dest2
    s_strncat(dest2, " Everyone", 3);
    printf("s_strncat: %s\n", dest2);

    // Test s_strcmp (comparaison de "abc" vs "abd")
    cmp_res = s_strcmp("abc", "abd");
    printf("s_strcmp (\"abc\" vs \"abd\"): %d\n", cmp_res);

    // Test s_strncmp (comparaison de "abcdef" et "abcxyz" sur 3 caractères)
    cmpn_res = s_strncmp("abcdef", "abcxyz", 3);
    printf("s_strncmp (\"abcdef\" vs \"abcxyz\" sur 3 caractères): %d\n", cmpn_res);

    // Test s_strchr : recherche du caractère 'l' dans "Hello"
    chr = s_strchr("Hello", 'l');
    if (chr)
        printf("s_strchr ('l' dans \"Hello\"): %s\n", chr);
    else
        printf("s_strchr ('l' dans \"Hello\"): non trouvé\n");

    // Test s_abs
    abs_val = s_abs(-123);
    printf("s_abs: %d\n", abs_val);

    // Test s_div
    div_val = s_div(10, 2);
    printf("s_div: %d\n", div_val);

    // Test s_pow
    pow_val = s_pow(2, 3);
    printf("s_pow: %d\n", pow_val);

    // Test s_exp (stub, actuellement retourne 0)
    exp_val = s_exp(3);  
    printf("s_exp (stub): %d\n", exp_val);

    // Test s_atoi (doit convertir "456" en 456)
    atoi_val = s_atoi("456");
    printf("s_atoi: %d\n", atoi_val);

    // Test s_puts
    s_puts("s_puts: Test de s_puts\n");

    // Test s_exit (décommenter pour tester la terminaison du programme)
    // s_exit(0);

    return 0;
}

