#include <stdlib.h>
#include <time.h>
#include <stdio.h>
#include <ctype.h>

char *ft_strcat(char *s1, const char *s2);

int	ft_isalpha(int c);
int	ft_isdigit(int c);
int	ft_isalnum(int c);
int	ft_isascii(int c);
int	ft_isprint(int c);
int	ft_isspace(int c);

int	ft_toupper(int c);
int ft_tolower(int c);

void test1()
{
	for (int c = -130; c < 130; c++)
	{
		if (c % 20 == 0)
			printf("c\tisalpha\tisdigit\tisalnum\tisascii\tisprint\tisspace\ttoupper\ttolower\n");
		printf("%c\t%d\t%d\t%d\t%d\t%d\t%d\t%c\t%c\n", c, ft_isalpha(c), ft_isdigit(c), ft_isalnum(c), ft_isascii(c), ft_isprint(c), ft_isspace(c), ft_toupper(c), ft_tolower(c));
	}
	srand(time(NULL));
	for (int i = 0; i < 1000; i++)
	{
		int c = rand();
		if (
				ft_isalpha(c) != isalpha(c) ||
				ft_isdigit(c) != isdigit(c) ||
				ft_isalnum(c) != isalnum(c) ||
				ft_isascii(c) != isascii(c) ||
				ft_isprint(c) != isprint(c) ||
				ft_isspace(c) != isspace(c) ||
				ft_toupper(c) != toupper(c) ||
				ft_tolower(c) != tolower(c)
		)
			printf("%d\n", c);
	}
}

#include <string.h>

size_t	ft_strlen(const char *s);
int	ft_puts(const char *s);
char *ft_strdup(const char *s1);

void test2(const int argc, const char **argv)
{
	if (argc == 1)
	{
		printf("Please specify some strings.\n");
		return ;
	}
	for (int i = 1; i < argc; i++)
		printf("ft_strlen(\"%s\") = %lu\n", argv[i], ft_strlen(argv[i]));
	for (int i = 1; i < argc; i++)
		ft_puts(argv[i]);
	ft_puts(NULL);

	if (argc > 2)
	{
		char s[512];
		strcpy(s, argv[1]);
		printf("%s + %s = %s\n", argv[1], argv[2], ft_strcat(s, argv[2]));
	}

	for (int i = 1; i < argc; i++)
	{
		char *str = ft_strdup(argv[i]);
		printf("strdup = %s\n", str);
		free(str);
	}
}

void ft_bzero(void *ptr, size_t n);
void *ft_memset(void *b, int c, size_t len);
void *ft_memcpy(void *dst, const void *src, size_t n);

void	test3()
{
	unsigned char arr[42];
	for (int i = 0; i < 42; i++)
		arr[i] = i;

	ft_bzero(arr, 5);
	ft_bzero(arr + 10, 15);
	ft_bzero(arr + 40, 0);
	for (int i = 0; i < 42; i++)
		printf("%u ", arr[i]);
	printf("\n");

	void *ret1 = ft_memset(arr, 4, 7);
	void *ret2 = ft_memset(arr + 10, 42, 10);
	void *ret3 = ft_memset(arr + 20, -1, 0);
	printf("%p, %p, %p, %p\n", arr, ret1, ret2 - 10, ret3 - 20);
	for (int i = 0; i < 42; i++)
		printf("%u ", arr[i]);
	printf("\n");

	const char str[10] = {42, 41, 40, 39, 38, 37, 36, 35, 34, 33};
	ret1 = ft_memcpy(arr, str, 10);
	ret2 = ft_memcpy(arr + 20, str, 0);
	printf("%p, %p, %p\n", arr, ret1, ret2 - 20);
	for (int i = 0; i < 42; i++)
		printf("%u ", arr[i]);
	printf("\n");
}

void ft_strlower(char *str);
void ft_strupper(char *str);
int	ft_strcmp(const char *s1, const char *s2);
int	ft_strcmpi(const char *s1, const char *s2);

void	bonus(const int argc, const char **argv)
{
	char *str;
	for (int i = 1; i < argc; i++)
	{
		printf("%s", argv[i]);
		str = ft_strdup(argv[i]);
		ft_strlower(str);
		printf("\t%s", str);
		str = ft_strdup(argv[i]);
		ft_strupper(str);
		printf("\t%s\n", str);
	}
	if (argc > 2)
	{
		printf("ft_strcmp(%s, %s) = %d (strcmp = %d)\n", argv[1], argv[2], ft_strcmp(argv[1], argv[2]), strcmp(argv[1], argv[2]));
		printf("ft_strcmpi(%s, %s) = %d\n", argv[1], argv[2], ft_strcmpi(argv[1], argv[2]));
	}
}

#include <fcntl.h>
#include <unistd.h>
void ft_cat(int fd);

int main(const int argc, const char **argv)
{
	test1();
	test2(argc, argv);
	test3();
	if (argc > 1)
	{
		int fd = open(argv[1], O_RDONLY);
		printf("ft_cat(-1);\n");
		fflush(stdout);
		ft_cat(-1);
		printf("ft_cat(%d);\n", fd);
		fflush(stdout);
		ft_cat(fd);
		close(fd);
	}
	bonus(argc, argv);
}
