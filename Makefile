# Variables
CC = gcc
AS = gcc -m32 -c
CFLAGS = -m32 -Wall -Wextra -Iinclude
LDFLAGS = -m32 -shared
TARGET_LIB = lib/libs_libc.so
TARGET_TEST = test/my_prog

# Sources et objets
ASM_SRCS = src/s_string.s src/s_math.s src/s_stdio.s src/s_stdlib.s
ASM_OBJS = $(patsubst src/%.s, build/%.o, $(ASM_SRCS))
TEST_SRC = test/main.c

# Cible par défaut : construire la bibliothèque
all: $(TARGET_LIB)

# Compilation des fichiers assembleur
build/%.o: src/%.s
	@mkdir -p build
	$(AS) $< -o $@

# Création de la bibliothèque partagée
$(TARGET_LIB): $(ASM_OBJS)
	@mkdir -p lib
	$(CC) $(LDFLAGS) -o $(TARGET_LIB) $(ASM_OBJS)

# Compilation du programme de test
test: $(TARGET_TEST)

$(TARGET_TEST): $(TEST_SRC) $(TARGET_LIB)
	@mkdir -p test
	$(CC) $(CFLAGS) -o $(TARGET_TEST) $(TEST_SRC) -Llib -ls_libc

# Nettoyage
clean:
	rm -rf build lib $(TARGET_TEST)

# Installation (à adapter selon ton environnement)
install: $(TARGET_LIB)
	cp $(TARGET_LIB) /usr/local/lib

.PHONY: all test clean install

