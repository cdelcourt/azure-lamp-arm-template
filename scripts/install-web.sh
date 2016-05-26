#!/bin/bash

yum update -y --exclude=WALinuxAgent

#no password prompt while installing mysql server
#export DEBIAN_FRONTEND=noninteractive

#Install Apache and associated packages
yum install -y epel-release
yum install -y nginx php-fpm redis fail2ban samba-client samba-common cifs-utils net-tools git --exclude=WALinuxAgent

#Install PHP and miscellaneous PHP modules
yum install -y php php-xml php-pdo php-process php-gd php-pecl-igbinary php-mbstring php-mcrypt php-mysqlnd php-pecl-redis php-xmlrpc php-tidy php-redis wget perl unzip net-tools perl-libwww-perl perl-LWP-Protocol-https perl-GDGraph --exclude=WALinuxAgent

#systemctl start httpd.service
systemctl start fail2ban.service

#Newrelic PHP repo
#yum install -y newrelic-repo

#NewRelic PHP Modules
#yum install -y newrelic-php5-common newrelic-php5 newrelic-sysmond

#Install Chef client
#wget https://packages.chef.io/stable/el/7/chef-12.8.1-1.el7.x86_64.rpm
#rpm -ivh chef-12.8.1-1.el7.x86_64.rpm

#Turn off SELinux
sed -i 's/^SELINUX=.*/SELINUX=disabled/g' /etc/sysconfig/selinux

#Install Azure CLI - disable currently because of timeouts in ARM template scripts
#npm install -g azure-cli
