#!/bin/bash

command() {
	{
		$1
	} &> /dev/null
}

read -p "Введите имя домена: " domain
read -p "Куда будет смотреть Apache? (если корень - /): " folder
path=/home/$USER/web/$domain$folder
echo "Настройка домена $domain путь к сайту $path"
command "sudo chmod 777 /etc/hosts"
sudo echo "127.0.0.1 $domain" >> /etc/hosts
command "cd /etc/apache2/sites-available"
command "sudo touch $domain.conf"
command "sudo chmod 777 $domain.conf"
command "sudo chmod 777 -R /home/$USER/web/$domain/"
sudo echo "<VirtualHost *:80>
ServerName $domain

ServerAdmin webmaster@localhost
DocumentRoot $path
<Directory $path>
  Options Indexes FollowSymLinks MultiViews
  AllowOverride All
  Require all granted
</Directory>

  ErrorLog ${APACHE_LOG_DIR}/error.log
  CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>" > $domain.conf
command "sudo a2ensite $domain"
command "sudo /etc/init.d/apache2 restart"