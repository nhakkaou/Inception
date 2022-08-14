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
path=/home/nhakkaou
all:
	mkdir -p ${path}/data/
	mkdir -p ${path}/data/wp/
	mkdir -p ${path}/db/
	# echo "127.0.0.1 nhakkaou.42.fr" >> /etc/hosts
	docker-compose -f ./srcs/docker-compose.yml up -d --build
down:
	docker-compose -f ./srcs/docker-compose.yml down
clean: down
	docker rmi ${names}
	docker volume rm ${volumes}
	rm -rf ${path}/data/wp/
fclean:
	docker system prune --all -f
re: clean fclean all
