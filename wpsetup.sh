#!/bin/bash
echo "downloading latest wordpress..."
wget -c http://wordpress.org/latest.tar.gz
echo "extracting package..."
tar -xzvf latest.tar.gz
echo "creating directory named wordpress in apache root directory"
sudo mkdir /var/www/html/wordpress
echo "moving extracted files into default wordpress directory..."
sudo rsync -av wordpress/* /var/www/html/wordpress
echo "setting correct permissions on the website directory"
sudo chown -R www-data:www-data /var/www/html/
sudo chmod -R 755 /var/www/html/
echo "setting permission for wordpress directory..."
sudo chmod -R 777 /var/www/html/wordpress
echo "Wordpress installation successfull"

