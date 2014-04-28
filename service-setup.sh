
# mysql server install
sudo apt-get install mysql-server  -y
sudo apt-get install phpmyadmin -y

# mysql 
sudo mysql_secure_installation 

# turn on services
sudo service mysql restart
sudo service apache2 restart

# drush 
sudo apt-get install drush -y
echo ::::: You may want to run sudo drush self-update


# permissions
sudo chmod 2775 -R /var/www
sudo chown www-data:www-data -R /var/www

# user mod
sudo usermod -a -G www-data vagrant
echo ::::: Your user was added to the www-data group but you may have to log out and back in for changes to take place. 