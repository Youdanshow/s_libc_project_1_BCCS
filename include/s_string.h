#ifndef S_STRING_H
#define S_STRING_H

extern int s_strlen(char *str);
extern char *s_strcpy(char *dest, const char *src);
extern char *s_strncpy(char *dest, const char *src, int n);
extern char *s_strcat(char *dest, const char *src);
extern char *s_strncat(char *dest, const char *src, int n);
extern int s_strcmp(const char *s1, const char *s2);
extern int s_strncmp(const char *s1, const char *s2, int n);
extern char *s_strchr(const char *s, int c);

#endif /* S_STRING_H */

