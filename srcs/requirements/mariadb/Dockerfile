# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mabdelou <mabdelou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/18 18:46:40 by mabdelou          #+#    #+#              #
#    Updated: 2023/01/18 18:46:41 by mabdelou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable

RUN apt update ; apt install vim mariadb-server mariadb-client -y
     
RUN mkdir -p /var/run/mysqld ; chown -R mysql:mysql /var/run/mysqld \
; chmod 777 /var/run/mysqld
COPY tools/run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh
ENTRYPOINT ["bash", "/tmp/run.sh"]
