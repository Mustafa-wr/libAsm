#include <stdio.h>
#include <unistd.h>
#include <errno.h>

int ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, const void *buf, size_t count);

int main() {
    // const char *test_str = "Hello, World!";
    // char *str = "Hello, World!a";
    // // printf(str, test_str);
    // printf("%d\n", ft_strcmp(str, test_str));

    if (ft_write(999, "Hello", 5) == -1) {  // Check return value
        printf("Error occurred!\n");
        printf("Error code: %d\n", errno);  // Check errno to see WHICH error
        // Output: Error code: 9 (EBADF)
    }
    return 0;
}

// docker build -t libasm .
// docker run -it -v /Users/mradwan/Desktop/libasm:/app libasm