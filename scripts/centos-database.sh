#!/bin/bash

#install Mysal

yum install -y mysql mysql-server mysql-devel
chconfig --add mysqld
chconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";	
