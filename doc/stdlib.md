# Documentation des Fonctions s_stdlib.h

## Description
Ce fichier décrit les fonctions de la bibliothèque Super libc liées à la gestion de la mémoire et aux conversions numériques, implémentées en assembleur.

## 1. `s_abs`

### Prototype
```c
int s_abs(int n);
```
### Description
Retourne la valeur absolue d'un entier.

### Paramètres
n : Entier dont on veut obtenir la valeur absolue.

### Valeur de retour
La valeur absolue de n.

### Exemple
```c
int result = s_abs(-42); // result = 42
```

## 2. `s_atoi`

### Prototype
```c
int s_atoi(const char *str);
```
### Description
Convertit une chaîne de caractères en entier.

### Paramètres
str : Chaîne de caractères représentant un nombre entier.

### Valeur de retour
L'entier correspondant à la chaîne.
Retourne 0 si la chaîne ne contient pas de nombre valide.

### Exemple
```c
int num = s_atoi("123"); // num = 123
```

## 3. `s_exit`
### Prototype
```c
void s_exit(int status);
```
### Description
Termine immédiatement le programme avec le code de sortie donné.

### Paramètres
status : Code de retour à renvoyer au système d'exploitation.

### Valeur de retour
Cette fonction ne retourne pas, car elle termine le programme.

### Exemple
```c
s_exit(0);
```
## Remarque
Les fonctions respectent les conventions de la bibliothèque standard C pour assurer une compatibilité maximale.