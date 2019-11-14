AS=nasm
ASFLAGS=-f macho64
OBJS=ft_isdigit.o ft_isascii.o
NAME=test

all: $(NAME)

$(NAME): $(OBJS)
	gcc main.c $(OBJS) -o test

#$(OBJS): %.o: %.s
