simple_drupal_vagrant
=
Simple vagrant setups to quickly build a d7 environment. This is not to complete with better projects like drupal vagrant [[http://drupal.org/project/vagrant]], but this is really for me to jump start a new drupal VM, test some things, and then move on with life. 


How to use
==

- Clone (`git clone ..`)
- Edit Vagrant file to select which box you'd like to use. I'm currently using precise32. 
- CD into newly cloned folder root 
- Make a folder called var-www. There is a config directive to share the webroot between guest and host (`mkdir www-var`)
- Start vagrant `vagrant up`
- SSH `vagrant ssh`

Once in Guest machine
==

- Run `/vagrant/bootstrap.sh` to run a bunch of apt-get installs
- Run `/vagrant/service-setup.sh` to run interactive set ups of mysql-server, phpmysql, drush, and mysql_secure_start

Optional
==
- Update Drush `drush self-update`

In web root 
==
- Go to web root `cd /var/www`
- Download Drupal `drush dl drupal`
- Rename drupal folder or move files to root
 
In web browser
==

- Create database in phpmyadmin `http://192.168.33.10/phpmyadmin`
- Run Drupal install http://192.168.33.10/{your_folder_name}
