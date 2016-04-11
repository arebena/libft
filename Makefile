#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arebena <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/20 16:38:14 by arebena           #+#    #+#              #
#    Updated: 2015/06/06 19:29:41 by arebena          ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a

SRCS := ft_lstnew.c\
	   ft_lstxnew.c\
	   ft_lstduptab.c\
	   ft_lstdelone.c\
	   ft_lstdel.c\
	   ft_lstadd.c\
	   ft_lstaddend.c\
	   ft_lstrewind.c\
	   ft_lstiter.c\
	   ft_lstmap.c\
	   ft_nodswap.c\
	   ft_noddup.c\
	   ft_nodemb.c\
	   ft_nodbemb.c\
	   ft_nodcut.c\
	   ft_noddel.c\
	   ft_strcpy.c\
	   ft_strdup.c\
	   ft_strndup.c\
	   ft_strjoin.c\
	   ft_strsub.c\
	   ft_strtrim.c\
	   ft_strlen.c\
	   ft_strclen.c\
	   ft_intlen.c\
	   ft_nbrlen.c\
	   ft_intswap.c\
	   ft_strncpy.c\
	   ft_strcmp.c\
	   ft_strncmp.c\
	   ft_strequ.c\
	   ft_strnequ.c\
	   ft_bzero.c\
	   ft_memset.c\
	   ft_memcpy.c\
	   ft_memccpy.c\
	   ft_memmove.c\
	   ft_memchr.c\
	   ft_memcmp.c\
	   ft_memalloc.c\
	   ft_memdel.c\
	   ft_strnew.c\
	   ft_strdel.c\
	   ft_btabdl.c\
	   ft_strclr.c\
	   ft_strcat.c\
	   ft_strncat.c\
	   ft_strlcat.c\
	   ft_strmcat.c\
	   ft_strchr.c\
	   ft_strnstr.c\
	   ft_strrchr.c\
	   ft_strstr.c\
	   ft_stritab.c\
	   ft_striter.c\
	   ft_striteri.c\
	   ft_strmap.c\
	   ft_strmapi.c\
	   ft_atoi.c\
	   ft_putchar.c\
	   ft_putchar_fd.c\
	   ft_putstr.c\
	   ft_putfstr.c\
       ft_putstr_fd.c\
	   ft_putendl.c\
       ft_putendl_fd.c\
	   ft_putnbr.c\
       ft_putnbr_fd.c\
	   ft_putsbtab.c\
	   ft_isalpha.c\
	   ft_isdigit.c\
	   ft_isalnum.c\
	   ft_isascii.c\
	   ft_isprint.c\
	   ft_isnbr.c\
	   ft_tabdup.c\
	   ft_tabswap.c\
	   ft_tabcpylst.c\
	   ft_quicksort_t.c\
	   ft_toupper.c\
	   ft_tolower.c\
	   ft_itoa.c\
	   ft_strsplit.c\
	   ft_strrev.c\

D_SRCS = $(addprefix srcs/, $(SRCS))
SRCO = $(addprefix obj/, $(SRCS:.c=.o))
nb = $(words $(SRCS))
FLG = -Wall -Wextra -Werror

$(NAME):
	@echo -n " "; for i in {1..17}; do echo -n =; done; echo ;
	@echo "//  LIBFT_MAKE  //"
	@for i in {1..40}; do echo -n =; done; echo ;
	@i=1;
	@mkdir -p obj
	@$(foreach src,$(SRCS),\
	gcc -c $(FLG) $(addprefix srcs/, $(src)) -o $(addprefix obj/, $(src:.c=.o));\
	echo -ne "\r\033[K";\
	let "i+=1";\
	echo -ne OBJ compiling "["$$i/$(nb)"] \""$(src)"\" ";\
	)
	@echo -e "\r\033[KOBJ compilation done."
	@ar rc $(NAME) $(SRCO)
	@ranlib $(NAME)
	@echo LIBFT created.
	@for i in {1..38}; do echo -n =; done; echo ;

all:$(NAME)

clean:
	@rm -rf obj

fclean:clean
	@rm -rf $(NAME)

re: fclean all

rec: re
	@make clean
