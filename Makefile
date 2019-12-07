AS=nasm
ASFLAGS=-f macho64
OBJS=ft_bzero.o ft_strcat.o \
	 ft_isalpha.o ft_isdigit.o ft_isalnum.o ft_isascii.o ft_isprint.o ft_toupper.o ft_tolower.o \
	 ft_puts.o ft_strlen.o ft_memset.o ft_memcpy.o ft_strdup.o \
	 ft_cat.o \
	 ft_strlower.o ft_strupper.o ft_isspace.o ft_strcmp.o ft_strcmpi.o
NAME=libfts.a
RM=rm -rf

all: $(NAME)

$(NAME): $(OBJS)
	ar -rcs $(NAME) $(OBJS)

$(OBJS): %.o: %.s

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

test: main.c $(NAME)
	gcc main.c -L. -lfts -o test

.PHONY: all clean fclean re
