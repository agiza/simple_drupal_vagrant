
# Composer
mkdir -p $HOME/bin/
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=$HOME/bin/
sudo ln -s $HOME/bin/composer.phar /usr/bin/composer

#drush
cd 
composer global require drush/drush:dev-master
composer global update
sudo ln - /home/vagrant/.composer/vendor/drush/drush/drush /usr/bin/drush

