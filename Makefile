# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: tblanker <tblanker@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2020/10/25 13:54:35 by tblanker      #+#    #+#                  #
#    Updated: 2020/10/25 14:00:00 by tblanker      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRC = ft_strlen.s \
	  hello_world.s

OBJ = $(SRC:%.s=%.o)

ASM = nasm

FLAGS = -f macho64

all: $(NAME)

$(NAME):
	$(ASM) $(FLAGS) ft_strlen.s
	$(ASM) $(FLAGS) hello_world.s
	ar rc $(NAME) $(OBJ)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all