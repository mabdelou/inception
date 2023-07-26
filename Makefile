# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mabdelou <mabdelou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/18 18:46:08 by mabdelou          #+#    #+#              #
#    Updated: 2023/01/18 18:46:09 by mabdelou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	docker-compose -f ./srcs/docker-compose.yml build  #--no-cache
	docker-compose -f ./srcs/docker-compose.yml up 
status:
	docker-compose -f ./srcs/docker-compose.yml ps
stop:
	docker-compose -f ./srcs/docker-compose.yml stop
start:
	docker-compose -f ./srcs/docker-compose.yml start
clean:
	docker-compose -f ./srcs/docker-compose.yml down -v
fclean: 
	docker-compose -f ./srcs/docker-compose.yml down -v
	bash cdd.sh
re: clean all


