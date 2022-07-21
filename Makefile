# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nhakkaou <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/14 17:32:35 by nhakkaou          #+#    #+#              #
#    Updated: 2022/07/14 17:44:49 by nhakkaou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

names=srcs_nginx srcs_mariadb srcs_wordpress
volumes=srcs_myapp srcs_hostPath

all:
	docker-compose -f ./srcs/docker-compose.yml up -d --build
down:
	docker-compose -f ./srcs/docker-compose.yml down
clean: down
	docker rmi ${names}
	docker volume rm ${volumes}
fclean:
	docker system prune --all
re: clean fclean all
