NAME = libasm.a

SRC_ASM = ft_strlen.s ft_strcpy.s
OBJ_ASM = $(SRC_ASM:.s=.o)

NASM = nasm
NASMFLAGS = -f elf64

AR = ar
ARFLAGS = rcs

CC = gcc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ_ASM)
	$(AR) $(ARFLAGS) $(NAME) $(OBJ_ASM)

%.o: %.s
	$(NASM) $(NASMFLAGS) $< -o $@

clean:
	rm -f $(OBJ_ASM)

fclean: clean
	rm -f $(NAME)

re: fclean all

