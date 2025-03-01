# Documentation des Fonctions `s_stdio.h`

## Description
Ce fichier décrit les fonctions de la bibliothèque **Super libc** liées aux entrées/sorties standard, implémentées en assembleur.

## Bibliothèque
```c
#include "s_stdio.h"
```

## 1. `s_puts`
```c
int s_puts(const char *str);
```
### Description
Affiche une chaîne de caractères suivie d'un retour à la ligne sur la sortie standard.

### Paramètres
    str : Chaîne de caractères à afficher.

### Valeur de retour
    Renvoie le nombre de caractères écrits.
    Renvoie -1 en cas d'erreur.

### Exemple 
En cours de developpement

## 2. `s_fopen`
```c
FILE* s_fopen(const char *filename, const char *mode);
```
### Description
Ouvre un fichier pour la lecture ou l'écriture.

### Paramètres
filename : Chemin du fichier.
mode : Mode d'ouverture du fichier ("r", "w", "a").

### Valeur de retour
    Retourne un pointeur vers le fichier.
    Retourne NULL en cas d'erreur.

### Exemple 
fonction non développée

## 3. `s_fread`
```c
size_t s_fread(void *ptr, size_t size, size_t count, FILE *stream);
```
### Description
Lit des données depuis un fichier.

### Paramètres
    ptr : Pointeur vers la mémoire où stocker les données.
    size : Taille d'un élément.
    count : Nombre d'éléments à lire.
    stream : Fichier à lire.

### Valeur de retour
    Retourne le nombre d'éléments lus.
    Retourne 0 en cas d'erreur ou de fin de fichier.

### Exemple 
fonction non développée

## 4. `s_fwrite`
```c
size_t s_fwrite(const void *ptr, size_t size, size_t count, FILE *stream);
```
### Description
Écrit des données dans un fichier.

### Paramètres
    ptr : Pointeur vers les données à écrire.
    size : Taille d'un élément.
    count : Nombre d'éléments à écrire.
    stream : Fichier cible.

### Valeur de retour
    Retourne le nombre d'éléments écrits.
    Retourne 0 en cas d'erreur.

### Exemple 
fonction non développée

## 5. `s_fclose`
```c
int s_fclose(FILE *stream);
```
### Description
Ferme un fichier ouvert.

### Paramètres
    stream : Fichier à fermer.

### Valeur de retour
    Retourne 0 en cas de succès.
    Retourne -1 en cas d'erreur.

### Exemple 
fonction non développée