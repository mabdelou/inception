# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mabdelou <mabdelou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/18 18:46:51 by mabdelou          #+#    #+#              #
#    Updated: 2023/01/18 18:46:52 by mabdelou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable

WORKDIR /home

RUN apt update
RUN apt install ssh php7.4-fpm -y
RUN mkdir -p /run/php
ENTRYPOINT ["/usr/sbin/php-fpm7.4", "-F"]
