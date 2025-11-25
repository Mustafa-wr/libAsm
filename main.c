#include <stdio.h>



size_t ft_strlen(const char *s);


int main() {
    const char *test_str = "Hello, World!";
    size_t length = ft_strlen(test_str);
    printf("Length of '%s' is %zu\n", test_str, length);
    return 0;
}