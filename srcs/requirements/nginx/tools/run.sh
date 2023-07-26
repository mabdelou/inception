#sed -i "5i	return 301 https://"$DOMAIN_NAME";"	/etc/nginx/conf.d/default.conf
sed -i "4i	server_name "$DOMAIN_NAME" www."$DOMAIN_NAME" ;" /etc/nginx/conf.d/default.conf

#service nginx start
#chmod 755 /var/www/html/website /var/www/html/website/*
#chown www-data:www-data /var/www/html/website /var/www/html/website/*
nginx -g "daemon off;"
