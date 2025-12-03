NAME = libasm.a

SRC_ASM = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_read.s ft_write.s ft_strdup.s
OBJ_ASM = $(SRC_ASM:.s=.o)

NASM = nasm
NASMFLAGS = -f elf64

AR = ar
ARFLAGS = rcs

all: $(NAME)

$(NAME): $(OBJ_ASM)
	$(AR) $(ARFLAGS) $(NAME) $(OBJ_ASM)

%.o: %.s
	$(NASM) $(NASMFLAGS) $< -o $@

test: $(NAME)
	gcc main.c -L. -lasm -o test

clean:
	rm -f $(OBJ_ASM)

fclean: clean
	rm -f $(NAME)

re: fclean all

