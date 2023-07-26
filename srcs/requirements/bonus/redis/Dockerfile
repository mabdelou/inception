# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mabdelou <mabdelou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/18 18:46:54 by mabdelou          #+#    #+#              #
#    Updated: 2023/01/18 18:46:55 by mabdelou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable

RUN apt update
RUN apt-get install curl vim redis php7.4-fpm php-redis -y

RUN mkdir /run/redis
RUN chmod 750 /run /run/redis
RUN chown -R redis:redis /run /run/redis /var/log/redis

COPY tools/run.sh /tmp/run.sh
RUN chmod  +x /tmp/run.sh
COPY conf/redis.conf /etc/redis/redis.conf
RUN chown redis:redis /etc/redis /etc/redis/*

ENTRYPOINT ["bash" , "/tmp/run.sh"]


