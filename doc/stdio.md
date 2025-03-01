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

## 2. `s_fopen`
### Description
Ouvre un fichier pour la lecture ou l'écriture.

### Paramètres
filename : Chemin du fichier.
mode : Mode d'ouverture du fichier ("r", "w", "a").

### Valeur de retour
    Retourne un pointeur vers le fichier.
    Retourne NULL en cas d'erreur.

## 3. `s_fread`
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

## 4. `s_fwrite`
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

## 5. `s_fclose`
### Description
Ferme un fichier ouvert.

### Paramètres
    stream : Fichier à fermer.

### Valeur de retour
    Retourne 0 en cas de succès.
    Retourne -1 en cas d'erreur.

## Remarque
Toutes les fonctions suivent la convention des bibliothèques standard C pour assurer une compatibilité maximale avec les programmes utilisateur.

