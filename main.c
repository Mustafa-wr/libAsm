#include <stdio.h>


int ft_strcmp(const char *s1, const char *s2);

int main() {
    const char *test_str = "Hello, World!";
    char *str = "Hello, World!a";
    // printf(str, test_str);
    printf("%d\n", ft_strcmp(str, test_str));
    return 0;
}

// docker build -t libasm .
// docker run -it -v /Users/mradwan/Desktop/libasm:/app libasm