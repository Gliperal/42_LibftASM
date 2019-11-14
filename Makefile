AS=nasm
ASFLAGS=-f macho64
OBJS=ft_isalpha.o ft_isdigit.o ft_isascii.o ft_isprint.o
NAME=test

all: $(NAME)

$(NAME): $(OBJS)
	gcc main.c $(OBJS) -o test
