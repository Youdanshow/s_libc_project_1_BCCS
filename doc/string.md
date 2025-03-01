# Documentation des Fonctions `s_string.h`

## Description
Ce fichier décrit les fonctions de la bibliothèque **Super libc** liées à la manipulation des chaînes de caractères, implémentées en assembleur.

## 1. `s_strcpy`
```c
char *s_strcpy(char *dest, const char *src);
```
### Description
Copie la chaîne de caractères **src** dans **dest**.

### Paramètres
- **`dest`** : Pointeur vers la destination.
- **`src`** : Pointeur vers la source.

### Valeur de retour
- Retourne **dest**.

### Exemple
```c
char dest[20];
s_strcpy(dest, "Hello");
```

---

## 2. `s_strncpy`
### Prototype
```c
char *s_strncpy(char *dest, const char *src, size_t n);
```
### Description
Copie au maximum **n** caractères de la chaîne **src** dans **dest**.

### Paramètres
- **`dest`** : Pointeur vers la destination.
- **`src`** : Pointeur vers la source.
- **`n`** : Nombre maximum de caractères à copier.

### Valeur de retour
- Retourne **dest**.

### Exemple
```c
char dest[20];
s_strncpy(dest, "Hello", 3); // dest contient "Hel"
```

---

## 3. `s_strlen`
### Prototype
```c
size_t s_strlen(const char *str);
```
### Description
Calcule la longueur de la chaîne de caractères.

### Paramètres
- **`str`** : Pointeur vers la chaîne de caractères.

### Valeur de retour
- Longueur de la chaîne (sans compter le caractère nul `\0`).

### Exemple
```c
int len = s_strlen("Hello"); // len = 5
```

---

## 4. `s_strcmp`
### Prototype
```c
int s_strcmp(const char *s1, const char *s2);
```
### Description
Compare deux chaînes de caractères.

### Paramètres
- **`s1`** : Première chaîne.
- **`s2`** : Deuxième chaîne.

### Valeur de retour
- **0** si les chaînes sont égales.
- Une valeur négative si **s1 < s2**.
- Une valeur positive si **s1 > s2**.

### Exemple
```c
int result = s_strcmp("abc", "abc"); // result = 0
```

---

## 5. `s_strchr`
### Prototype
```c
char *s_strchr(const char *str, int c);
```
### Description
Recherche la première occurrence du caractère **c** dans la chaîne **str**.

### Paramètres
- **`str`** : Chaîne de caractères.
- **`c`** : Caractère recherché.

### Valeur de retour
- Pointeur vers la première occurrence du caractère, ou **NULL** si le caractère n'est pas trouvé.

### Exemple
```c
char *pos = s_strchr("Hello", 'e'); // pos pointe vers 'e'
```