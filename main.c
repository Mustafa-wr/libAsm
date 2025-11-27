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
char *ft_strdup(const char *s1);

int main() {
    char *str = ft_strdup("Hello, World!");
    printf("ft_strdup: %s\n", str);
    free(str);
    // char buf[100];
    // int fd = open("test.txt", O_RDONLY);
    // if (fd != -1) {
    //     memset(buf, 0, sizeof(buf));
    //     ssize_t ret = ft_read(fd, buf, 50);
    //     printf("Read %zd bytes: %s\n", ret, buf);
    //     close(fd);
    // }


    // errno = 0;
    // ssize_t ret = ft_read(999, buf, 10);
    // printf("Bad fd: returned %zd, errno: %d\n", ret, errno);
    // errno = 0; // Reset errno for the next test
    // ssize_t ret2 = ft_write(0, "test\n", 5);
    // printf("Returned: %zd, errno: %d (EBADF=%d)\n", ret2, errno, EBADF);

    return 0;
}

// 
// 