#!/bin/sh

#copy inti script to syttem server
echo "Initialization..."
cp ./nginx /etc/init.d/
chmod +x /etc/init.d/nginx

#Installation dependent libraries
echo "Depends..."
apt-get install -y libpcre3-dev zlib1g-dev libcurl4-openssl-dev libssl-dev

#create directory & copy phpinfo.php
mkdir /var/www
mkdir /var/www/public
cp info.php /var/www/public

#Set Startup Items
echo "StartUp..."
update-rc.d -f nginx defaults

#Display Nginx Version
echo "The current version is:"
/usr/local/nginx/sbin/nginx -v
