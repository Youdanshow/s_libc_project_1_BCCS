#ifndef S_STDIO_H
#define S_STDIO_H

extern int s_puts(const char *str);
extern int s_fopen(const char *filename, const char *mode);
extern int s_fread(void *ptr, int size, int nmemb, int stream);
extern int s_fwrite(const void *ptr, int size, int nmemb, int stream);
extern int s_fclose(int stream);

#endif /* S_STDIO_H */

