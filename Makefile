# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mamoulin <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/23 13:54:36 by mamoulin          #+#    #+#              #
#    Updated: 2023/12/15 14:28:15 by mamoulin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_printchar.c \
      ft_printstr.c \
      ft_printpc.c \
      ft_print_nbr.c \
      ft_print_hex.c \
      ft_printhex_maj.c \
      ft_printu.c \
      ft_printf.c \
      ft_printptr.c 


OBJS = ${SRC:.c=.o} 

NAME = libftprintf.a
LIBFT = libft
LIBFT_MAKE = Makefile
LIBFT_PATH = ${LIBFT}/libft.a
CFLAGS = -Wall -Wextra -Werror -I ${LIBFT}
CC = cc
RM = rm -f
AR = ar rc
RN = ranlib

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

all:	${NAME}

$(NAME):	$(OBJS) 
		make -C ./libft
		cp ./libft/libft.a ${NAME}
		${AR} ${NAME} ${OBJS}

clean:
	${RM} ${OBJS}
	make clean -C ./libft

fclean:	clean
	${RM} ${NAME}
	make fclean -C ./libft

re:	fclean all

.PHONY: all clean fclean re

