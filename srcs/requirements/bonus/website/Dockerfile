# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mabdelou <mabdelou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/18 18:46:47 by mabdelou          #+#    #+#              #
#    Updated: 2023/01/18 18:46:48 by mabdelou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable

WORKDIR /var/www/html/website

COPY ./tools/ /var/website
RUN apt update
RUN apt install php7.4-fpm -y
RUN mkdir -p /run/php
COPY ./conf/run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh


ENTRYPOINT ["bash", "/tmp/run.sh"]
