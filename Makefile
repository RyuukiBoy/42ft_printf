NAME = libftprintf.a
CFLAGS = -Wall -Wextra -Werror

SRCS = ft_putchar.c ft_putnbr.c ft_putstr.c ft_putunbr.c \
      ft_puthexa_low.c ft_puthexa_upp.c ft_putptr.c ft_printf.c
OBJ = $(SRCS:.c=.o)

all : $(NAME)

$(NAME) : $(OBJ)
		ar rc $(NAME) $(OBJ)

clean :
		rm -f $(OBJ)

fclean : clean
		rm -f $(NAME)

re : fclean all