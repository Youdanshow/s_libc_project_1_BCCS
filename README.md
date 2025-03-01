# s_libc_project_1_BCCS

## Description du Projet

Ce projet est réalisé dans le cadre de la SAÉ 3.3 intitulée **"La SAÉ du Hacker"** pour la compétence **SAÉ.Cyber.03 - Administrer et Surveiller un système d’information sécurisé**. Il se divise en deux parties :

1. **Super libc** : Réimplémentation en assembleur de plusieurs fonctions standards de la bibliothèque C (libc) pour améliorer les performances et optimiser la consommation mémoire.
2. **Désassemblage (CrackMe)** : Analyse et ingénierie inverse d'exécutables pour identifier des identifiants et mots de passe cachés.

---

## Arborescence

Le projet suit la structure suivante :

```plaintext
s_libc_project_[num_groupe]_[num_equipe]/
├── src/         # Code assembleur des fonctions
├── include/     # Fichiers d'en-tête (.h)
├── lib/         # Bibliothèque compilée (.so)
├── test/        # Fichier main.c pour tester les fonctions
├── build/       # Dossier temporaire pour la compilation
├── doc/         # Documentation des fonctions
├── README.md    # Description du projet
└── Makefile     # Script pour automatiser la compilation
```

### CrackMe

    Analyse de binaires pour découvrir des identifiants et mots de passe cachés.
    Utilisation de l’outil radare2 pour l’ingénierie inverse.
    Réécriture des programmes en C.

## Installation
### Compilation
    make clean
    make test
    
### Varible d'environnement
    export LD_LIBRARY_PATH=./lib:$LD_LIBRARY_PATH

### Lancement des Tests
    ./test/my_prog

### Nettoyage
    make clean

## Auteurs

    Jan BELLON
    Eliott CHARBOTEL
    Dorian CHOLEZ
    Damien SANTERO