#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <fcntl.h>
#include <stdlib.h>

int ft_strcmp(const char *s1, const char *s2);
size_t ft_strlen(const char *s);
char *ft_strcpy(char *dst, const char *src);
ssize_t ft_write(int fd, const void *buf, size_t count);
ssize_t ft_read(int fd, void *buf, size_t count);
char *ft_strdup(const char *s1, int a, int b, char **str);

int main()
{
    printf("=== Testing ft_strlen ===\n");
    printf("%zu (expected 5)\n", ft_strlen("hello"));
    printf("%zu (expected 0)\n\n", ft_strlen(""));

    printf("=== Testing ft_strcmp ===\n");
    printf("%d (expected 0)\n", ft_strcmp("hello", "hello"));
    printf("%d (expected < 0)\n", ft_strcmp("abc", "abd"));
    printf("%d (expected > 0)\n\n", ft_strcmp("abd", "abc"));

    printf("=== Testing ft_strcpy ===\n");
    char buf[20];
    ft_strcpy(buf, "test");
    printf("%s (expected test)\n\n", buf);

    printf("=== Testing ft_write ===\n");
    ft_write(1, "Hello World!\n", 13);
    printf("(expected: Hello World! above)\n\n");

    printf("=== Testing ft_read ===\n");
    printf("Type something: ");
    char input[100];
    ssize_t bytes = ft_read(0, input, 10);
    printf("Read %zd bytes\n\n", bytes);

    printf("=== Testing ft_strdup ===\n");
    char *dup = ft_strdup("duplicate", 0, 0, NULL);
    printf("%s (expected duplicate)\n", dup);
    free(dup);

    return 0;
}

//
//