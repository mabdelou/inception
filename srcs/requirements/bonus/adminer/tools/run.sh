
cd /var/www/html/adminer

wget -O index.php https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php
chown -R www-data:www-data ./ ./*
chmod 755 www-data:www-data ./ ./*


