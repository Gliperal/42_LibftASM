AS=nasm
ASFLAGS=-f macho64
# memcpy
# strdup
OBJS=ft_bzero.o ft_strcat.o \
	 ft_isalpha.o ft_isdigit.o ft_isalnum.o ft_isascii.o ft_isprint.o ft_toupper.o ft_tolower.o \
	 ft_puts.o ft_strlen.o ft_memset.o
NAME=test
RM=rm -rf

all: $(NAME)

$(NAME): $(OBJS) main.c
	gcc main.c $(OBJS) -o test

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
