# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mabdelou <mabdelou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/18 18:47:07 by mabdelou          #+#    #+#              #
#    Updated: 2023/01/18 18:47:08 by mabdelou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable

WORKDIR /var/www/html/adminer

RUN apt update
RUN apt install wget vim -y
RUN chmod -R 775 /var/www/html/adminer/
RUN chown -R www-data:www-data /var/www/html/adminer/

COPY tools/run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh

ENTRYPOINT ["bash", "/tmp/run.sh"]

