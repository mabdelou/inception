# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    cdd.sh                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mabdelou <mabdelou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/18 18:46:12 by mabdelou          #+#    #+#              #
#    Updated: 2023/01/18 18:46:13 by mabdelou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

CONTAINERS="$(docker container ls -a -q)"
IMAGES="$(docker image ls -a -q)"
VOLUMES="$(docker volume ls -q)"
NETWORKS="$(docker network ls -q | wc -l)"

	if [ -z  "${CONTAINERS}" ]; then
		echo "all containers deleted"
	else
                docker container rm $CONTAINERS
	fi
        if [ -z "${IMAGES}" ]; then
		echo "all images deleted"
	else
                docker image rm -f $IMAGES 
	fi
        if [ -z "${VOLUMES}" ]; then
		echo "all volumes deleted"
	else
                docker volume rm $VOLUMES
	fi
	if [ ${NETWORKS} == 3 ]; then
		echo "all networks deleted"
	else
                docker network rm $NETWORKS
	fi

