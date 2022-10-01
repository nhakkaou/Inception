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

names=nginx mariadb wordpress ftp redis website
volumes=srcs_mariadb_data srcs_wordpress_nginx
path=/home/nhakkaou
all:
	mkdir -p ${path}/data/
	mkdir -p ${path}/data/wp/
	mkdir -p ${path}/db/
	# echo "127.0.0.1 nhakkaou.42.fr" >> /etc/hosts
	docker-compose -f ./srcs/docker-compose.yml up  --build
down:
	docker-compose -f ./srcs/docker-compose.yml down
clean: down
	docker rmi ${names}
	docker volume rm ${volumes}
	rm -rf ${path}/data
	rm -rf ${path}/db
fclean:
	docker system prune --all -f
rmv:
	docker volume rm ${volumes}
	rm -rf ${path}/data
	rm -rf ${path}/db
