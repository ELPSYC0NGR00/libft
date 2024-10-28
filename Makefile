# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fde-simo <fde-simo@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/26 15:34:39 by fde-simo          #+#    #+#              #
#    Updated: 2024/10/26 15:34:42 by fde-simo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = cc #compildor
CCFLAGS = -Wall -Wextra -Werror #flags
RM = rm -rf #borrar


MY_SOURCES = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c\
		ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c ft_memcmp.c\
		ft_memcpy.c ft_memmove.c ft_memset.c ft_strchr.c ft_strdup.c\
		ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c ft_strnstr.c\
		ft_strrchr.c ft_tolower.c ft_toupper.c ft_substr.c ft_strjoin.c\
		ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c\
		ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

OBJS = $(MY_SOURCES:.c=.o) # una variable cuya dependencia es convertir los . c en .o

all: $(NAME)

$(NAME) : $(OBJS) #crear el ejecutable
	@ar crs $(NAME) $(OBJS)  

clean:
	@$(RM) $(OBJS)
fclean: clean
	@$(RM) $(NAME) $(OBJS)
re: fclean all # limpiar y recompilar todo
.PHONY: all clean fclean re
