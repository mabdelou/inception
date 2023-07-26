

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root
mv wp-config-sample.php wp-config.php
chmod 755 . ./* ./*/*
chown -R www-data:www-data . ./* ./*/*

sed -i "23i define( 'DB_NAME', '"$WORDPRESS_DB_NAME"' );"	wp-config.php
sed -i "26i define( 'DB_USER', '"$WORDPRESS_DB_USER"' );"	wp-config.php
sed -i "29i define( 'DB_PASSWORD','"$WORDPRESS_DB_PASSWORD"' );"	wp-config.php
sed -i "32i define( 'DB_HOST', '"$WORDPRESS_DB_HOST"' );"	wp-config.php

wp core install --url=$DOMAIN_NAME --title="my website" --admin_name="mabdelou" --admin_password="Hello@world</>" --admin_email="mabdelou@student.1337.ma" --allow-root
wp user create new_user new_user@mabdelou.42.fr --role=author --user_pass=Newuser1234 --allow-root
sed -i "40i define( 'WP_REDIS_HOST', 'redis' );"	wp-config.php
sed -i "41i define( 'WP_REDIS_PORT', 6379 );"	wp-config.php
sed -i "42i define( 'WP_REDIS_TIMEOUT', 1 );"	wp-config.php
sed -i "43i define( 'WP_REDIS_READ_TIMEOUT', 1 );"	wp-config.php
sed -i "44i define( 'WP_REDIS_DATABASE', 0 );"	wp-config.php
sed -i "46i define('WP_CACHE', true);" wp-config.php


wp plugin install redis-cache --activate --allow-root
wp redis enable --allow-root
service php7.4-fpm stop

/usr/sbin/php-fpm7.4  -F -R  #--daemonize no

