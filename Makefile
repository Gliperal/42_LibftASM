AS=nasm
ASFLAGS=-f macho64
OBJS=ft_isalpha.o ft_isdigit.o ft_isalnum.o ft_isascii.o ft_isprint.o ft_toupper.o ft_tolower.o \
	 ft_puts.o ft_strlen.o
NAME=test

all: $(NAME)

$(NAME): $(OBJS) main.c
	gcc main.c $(OBJS) -o test
