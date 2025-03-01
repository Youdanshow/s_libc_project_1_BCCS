# Documentation des Fonctions `s_stdio.h`
Projet : s_libc_project_1_BCCS  
Auteur : [Vos Noms]  
Date : [Date]

---

## Description
Ce fichier décrit les fonctions de la bibliothèque **Super libc** liées aux entrées/sorties standard, implémentées en assembleur.

---

## 1. `s_puts`
### Prototype
```c
int s_puts(const char *str);
```
### Description
Affiche une chaîne de caractères suivie d'un retour à la ligne sur la sortie standard.

### Paramètres
- **`str`** : Chaîne de caractères à afficher.

### Valeur de retour
- Nombre de caractères écrits.
- **-1** en cas d'erreur.

### Exemple
```c
s_puts("Hello, World!");
```

---

## 2. `s_fopen`
### Prototype
```c
FILE *s_fopen(const char *filename, const char *mode);
```
### Description
Ouvre un fichier pour la lecture ou l'écriture.

### Paramètres
- **`filename`** : Nom du fichier.
- **`mode`** : Mode d'ouverture ("r", "w", "a").

### Valeur de retour
- Pointeur vers le fichier ouvert.
- **NULL** en cas d'erreur.

### Exemple
Fonction non développée.
```c
FILE *file = s_fopen("file.txt", "r");
```

---

## 3. `s_fread`
### Prototype
```c
size_t s_fread(void *ptr, size_t size, size_t count, FILE *stream);
```
### Description
Lit des données depuis un fichier.

### Paramètres
- **`ptr`** : Pointeur vers la mémoire où stocker les données.
- **`size`** : Taille d'un élément.
- **`count`** : Nombre d'éléments à lire.
- **`stream`** : Pointeur vers le fichier ouvert.

### Valeur de retour
- Nombre d'éléments lus.
- **0** en cas d'erreur ou de fin de fichier.

### Exemple
Fonction non développée.
```c
char buffer[100];
s_fread(buffer, sizeof(char), 100, file);
```

---

## 4. `s_fwrite`
### Prototype
```c
size_t s_fwrite(const void *ptr, size_t size, size_t count, FILE *stream);
```
### Description
Écrit des données dans un fichier.

### Paramètres
- **`ptr`** : Pointeur vers les données à écrire.
- **`size`** : Taille d'un élément.
- **`count`** : Nombre d'éléments à écrire.
- **`stream`** : Pointeur vers le fichier ouvert.

### Valeur de retour
- Nombre d'éléments écrits.
- **0** en cas d'erreur.

### Exemple
Fonction non développée.
```c
s_fwrite(buffer, sizeof(char), 100, file);
```

---

## 5. `s_fclose`
### Prototype
```c
int s_fclose(FILE *stream);
```
### Description
Ferme un fichier ouvert.

### Paramètres
- **`stream`** : Pointeur vers le fichier à fermer.

### Valeur de retour
- **0** en cas de succès.
- **-1** en cas d'erreur.

### Exemple
Fonction non développée.
```c
s_fclose(file);
```