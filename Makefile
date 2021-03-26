# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rcourtoi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/05 23:55:33 by rcourtoi          #+#    #+#              #
#    Updated: 2019/09/16 02:46:35 by rcourtoi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	:= libftprintf.a

SRCS	:= ./src/conv/c.c	\
			./src/conv/d.c	\
			./src/conv/f.c	\
			./src/conv/o.c	\
			./src/conv/p.c	\
			./src/conv/s.c	\
			./src/conv/u.c	\
			./src/conv/x.c	\
			./src/conv/b.c	\
			./src/conv/t.c	\
			./src/conv/t_bis.c	\
			./src/conv/t_bis_bis.c	\
			./src/conv/colors.c	\
			./src/conv/invalid_conv.c	\
			./src/args.c	\
			./src/buffer.c	\
			./src/ft_printf.c	\
			./src/fun_array.c	\
			./src/fill_conv.c	\
			./src/flags.c		\
			./src/print_ftoa.c	\
			./src/print_itoa_base.c	\
			./lib/libft/ft_atoi.c	\
			./lib/libft/ft_bzero.c	\
			./lib/libft/ft_isdigit.c	\
			./lib/libft/ft_strlen.c	\
			./lib/libft/ft_isspace.c	\
			./lib/libft/ft_memset.c	\
			./lib/libft/ft_memcpy.c	\
			./lib/libft/ft_strcpy.c	\
			./lib/libft/ft_strncpy.c	\
			./lib/libft/ft_toupper.c	\

OBJS	:= $(SRCS:.c=.o)

CC			?= gcc
CFLAGS		?= -Wall -Wextra -Werror
CPPFLAGS	?= -I incl/ -I lib/libft/

LIBFT	:= lib/libft/libft.a

all: $(NAME)

$(NAME): $(OBJS)
	@ar rcs $@ $^

%.o: %.c
	@$(CC) -c $(CFLAGS) $(CPPFLAGS) $< -o $@
	@echo Compiling  $<

debug_clean:
	rm -rf a.out.dSYM

debug: CFLAGS := -g
debug: re


test: CFLAGS :=
test: $(NAME)

clean:
	@rm -f $(OBJS)
	@echo Clean .o files
	
fclean: clean
	@rm -f $(NAME)
	@echo Clean libftprintf.a

re: fclean $(NAME)

.PHONY: all clean fclean re
