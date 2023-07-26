

cat << EOF > /etc/vsftpd.conf
listen=YES
listen_ipv6=NO
connect_from_port_20=YES
anonymous_enable=NO
local_enable=YES
write_enable=YES
chroot_local_user=YES
allow_writeable_chroot=YES
secure_chroot_dir=/var/run/vsftpd/empty
pam_service_name=vsftpd
pasv_enable=YES
pasv_min_port=40000
pasv_max_port=45000
userlist_enable=YES
userlist_file=/etc/vsftpd.userlist
userlist_deny=NO
EOF

useradd learn
passwd learn << EOF
learn1234
learn1234
EOF
usermod learn -d /var/www/html

echo "learn" | tee -a /etc/vsftpd.userlist

service vsftpd restart
/usr/sbin/php-fpm7.4 -F -R

