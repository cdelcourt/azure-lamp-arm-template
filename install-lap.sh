#!/bin/bash

yum update -y --exclude=WALinuxAgent

#no password prompt while installing mysql server
#export DEBIAN_FRONTEND=noninteractive

#Install Apache and associated packages
#yum install -y epel-release ##Commented out because of potential issues between repos
yum install -y httpd mod_ssl fail2ban samba-client samba-common cifs-utils net-tools git --exclude=WALinuxAgent

#Install PHP and miscellaneous PHP modules
yum install -y php php-xml php-pdo php-process php-gd php-pecl-igbinary php-mbstring php-mcrypt php-mysqlnd php-pecl-redis php-xmlrpc php-tidy --exclude=WALinuxAgent

#Newrelic PHP repo
#yum install -y newrelic-repo

#NewRelic PHP Modules
#yum install -y newrelic-php5-common newrelic-php5 newrelic-sysmond

#Install Chef client
#wget https://packages.chef.io/stable/el/7/chef-12.8.1-1.el7.x86_64.rpm
#rpm -ivh chef-12.8.1-1.el7.x86_64.rpm

#Turn off SELinux
#setenforce 0

#Install CLI prerequisites
#yum install -y nodejs npm

#Install Azure CLI - REMOVED for now while testing as it takes a long time to install
#npm install -g azure-cli
