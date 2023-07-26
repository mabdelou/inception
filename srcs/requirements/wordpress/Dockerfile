# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mabdelou <mabdelou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/18 18:46:28 by mabdelou          #+#    #+#              #
#    Updated: 2023/01/18 18:46:29 by mabdelou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable

WORKDIR /var/www/html

RUN apt update
RUN apt install vim net-tools wget tar php7.4-fpm php7.4-mysql -y
COPY ./tools/run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh
RUN  mkdir -p /run/php
COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

ENTRYPOINT ["bash", "/tmp/run.sh"]
