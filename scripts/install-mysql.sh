#!/bin/bash

yum update -y --exclude=WALinuxAgent

#no password prompt while installing mysql server
export DEBIAN_FRONTEND=noninteractive

#install mysql server and azure-cli prerequisites
yum install -y epel-release

wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
yum update -y  --exclude=WALinuxAgent

yum install -y mysql-server nodejs npm fail2ban --exclude=WALinuxAgent

systemctl enable mysqld.service && systemctl start mysqld.service
systemctl enable fail2ban.service && systemctl start fail2ban.service

#Install Azure CLI - disable currently because of timeouts in ARM template scripts
#npm install -g azure-cli
