#!/bin/bash
sudo apt-get update
sudo apt-get install apache2
sudo apt-get install mysql-server php7.0-mysql
sudo mysql_secure_installation
sudo apt-get install libapache2-mod-php
sudo systemctl restart apache2
sudo apt-get install phpmyadmin
sudo systemctl restart apache2
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html
sudo ln -s /usr/share/phpmyadmin /var/www/html
echo "Hopefully everything is installed properley!"
