#!/bin/bash

# Update Centos (exclude kernel)
yum update -y --exclude=kernel

# Install tools
yum install -y tree git unzip screen

# Install Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chconfig httpd on
service httpd stop

# Link Vagrant folder to http root
rm -rf /var/www/html
ln -s /vagrant /var/www/html



#php install
yum install -y php php-cli php-common php-devel php-mysql

#intstall Mysal

yum install -y mysql mysql-server mysql-devel
chconfig --add mysqld
chconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";	

#Download Start Contet
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/baalistyx/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/baalistyx/vagrant/master/files/info.php

service httpd start



