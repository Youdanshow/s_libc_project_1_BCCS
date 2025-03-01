# Documentation des Fonctions `s_math.h`

## Description
Ce fichier décrit les fonctions de la bibliothèque **Super libc** liées aux opérations mathématiques, implémentées en assembleur.

## 1. `s_abs`
```c
int s_abs(int n);
```
### Description
Retourne la valeur absolue d'un entier.

### Paramètres
- **`n`** : Entier dont on veut obtenir la valeur absolue.

### Valeur de retour
- La valeur absolue de **`n`**.

### Exemple
```c
int result = s_abs(-15); // result = 15
```

---

## 2. `s_div`
```c
int s_div(int a, int b);
```
### Description
Effectue une division entière entre deux nombres.

### Paramètres
- **`a`** : Dividende.
- **`b`** : Diviseur.

### Valeur de retour
- Résultat de la division entière **a / b**.
- Retourne **0** si **b == 0** pour éviter la division par zéro.

### Exemple
```c
int result = s_div(10, 2); // result = 5
```

---

## 3. `s_pow`
```c
int s_pow(int base, int exp);
```
### Description
Calcule la puissance d'un nombre entier.

### Paramètres
- **`base`** : Base.
- **`exp`** : Exposant (positif uniquement).

### Valeur de retour
- **base^exp**.
- Retourne **1** si **exp == 0**.

### Exemple
```c
int result = s_pow(2, 3); // result = 8
```

---

## 4. `s_exp`
```c
double s_exp(double x);
```
### Description
Calcule l'exponentielle **e^x**.

### Paramètres
- **`x`** : Valeur de l'exposant.

### Valeur de retour
- **e^x**.

### Exemple
```c
double result = s_exp(1.0); // result ≈ 2.718
```