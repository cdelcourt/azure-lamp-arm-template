#!/bin/bash

yum update -y --exclude=WALinuxAgent

#Install Apache and associated packages
yum install -y epel-release
yum install -y httpd redis mod_ssl fail2ban git --exclude=WALinuxAgent

#Install PHP and miscellaneous PHP modules
yum install -y php php-xml php-pdo php-process php-gd php-pecl-igbinary php-mbstring php-mcrypt php-mysqlnd php-pecl-redis php-xmlrpc php-tidy php-redis wget perl unzip net-tools perl-libwww-perl perl-LWP-Protocol-https perl-GDGraph --exclude=WALinuxAgent

#Enable and start httpd and fail2ban
systemctl enable httpd.service && systemctl start httpd.service
systemctl enable fail2ban.service && systemctl start fail2ban.service

#Newrelic PHP repo
rpm -Uvh https://yum.newrelic.com/pub/newrelic/el5/x86_64/newrelic-repo-5-3.noarch.rpm

#NewRelic PHP Modules
yum install -y newrelic-php5-common newrelic-php5 newrelic-sysmond

#Install Chef client
#wget https://packages.chef.io/stable/el/7/chef-12.8.1-1.el7.x86_64.rpm
#rpm -ivh chef-12.8.1-1.el7.x86_64.rpm

#Turn off SELinux
#setenforce 0
