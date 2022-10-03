# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mriant <mriant@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/03 16:58:38 by mriant            #+#    #+#              #
#    Updated: 2022/10/03 18:17:46 by mriant           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = miniRT

SRCS = ${addprefix srcs/, \
	main.c}
OBJS = ${SRCS:srcs/%.c=build/%.o}
DEPS = ${SRCS:srcs/%.c=build/%.d}

MLX_DIR = ./minilibx-linux
MLX = libmlx_Linux.a
MLX_L = ${MLX:lib%.a=%}

CC = cc
CFLAGS = -Wall -Wextra -Werror -g
IFLAGS = -MMD -I./includes -I./minilibx-linux
LFLAGS = -L${MLX_DIR} -l${MLX_L} -lXext -lX11 -lm -lz

${NAME}: ${MLX_DIR}/${MLX} ${OBJS}
	${CC} ${CFLAGS} ${OBJS} -o ${NAME} ${LFLAGS}

${MLX_DIR}/${MLX}:
	make -C ${MLX_DIR}

build/%.o: srcs/%.c
	mkdir -p build
	${CC} ${CFLAGS} -c $< -o $@ ${IFLAGS}

.PHONY: all
all: ${NAME}

.PHONY: clean
clean:
	rm -rf build

.PHONY: fclean
fclean: clean
	rm -rf ${NAME}
	make -C ${MLX_DIR} clean

.PHONY: re
re: fclean
	make -C .

-include ${DEPS}
