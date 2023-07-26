# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mabdelou <mabdelou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/18 18:46:59 by mabdelou          #+#    #+#              #
#    Updated: 2023/01/18 18:47:00 by mabdelou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable

WORKDIR /var/www/html

RUN apt update
RUN apt install vsftpd php7.4-fpm -y 
RUN mkdir -p /run/vsftpd /run/php
COPY tools/run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh

ENTRYPOINT ["bash", "/tmp/run.sh"]
