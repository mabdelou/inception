#!/bin/sh

cat << EOF > /etc/mysql/my.cnf
[mysqld]
user = root
port = 3306
socket = /var/run/mysqld/mysqld.sock
bind-address = 0.0.0.0
EOF
mysql_install_db #--user=mysql --datadir=/var/lib/mysql

service mariadb start

if [ -d "/var/lib/mysql/$MYSQL_DATABASE" ]
then 

	echo "Database already exists"
else

mysql_secure_installation << EOF

Y
Y
www-data
www-data
Y
n
Y
Y
EOF

mysql  << EOF

CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;
CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';
FLUSH PRIVILEGES;
exit
EOF

fi
service mariadb stop
#exec "$@"
mysqld -user=$MYSQL_USER
