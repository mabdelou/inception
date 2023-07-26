# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mabdelou <mabdelou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/18 18:46:36 by mabdelou          #+#    #+#              #
#    Updated: 2023/01/18 18:46:37 by mabdelou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable

WORKDIR /var/www/html

RUN apt update
RUN apt install vim -y
RUN apt install openssl -y
RUN apt install nginx -y

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf
COPY ./tools/server.crt /etc/nginx/conf.d/server.crt
COPY ./tools/server.key /etc/nginx/conf.d/server.key
COPY ./tools/nginx.conf /etc/nginx/nginx.conf
COPY ./tools/run.sh /tmp/run.sh
#RUN chmod 755 /var/www/html/website /var/www/html/website/*
#RUN chown www-data:www-data /var/www/html/website /var/www/html/website/*
RUN chmod +x /tmp/run.sh

ENTRYPOINT ["bash", "/tmp/run.sh"]

