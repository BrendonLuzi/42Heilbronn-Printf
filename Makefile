NAME	=	libftprintf.a
SRC		=	ft_printf.c				\
			ft_printf_flags.c		\
			ft_printf_formats.c		\
			ft_printf_printers.c	\
			ft_printf_utilities.c

OBJ			=	$(SRC:%.c=%.o)

all			:	$(NAME)

$(NAME)		:	$(OBJ)
	@ar rc $(NAME) $(OBJ)

bonus		:	$(OBJ)
	@ar rc $(NAME) $^

$(OBJ)		:	$(SRC)
	@cc -Wall -Wextra -Werror -c $^

clean		:
	@rm -f $(OBJ)

fclean		:	clean
	@rm -f $(NAME)

re			:	fclean all

.PHONY:		all bonus clean fclean re