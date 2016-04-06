#!/bin/bash

yum update -y --exclude=WALinuxAgent

#no password prompt while installing mysql server
export DEBIAN_FRONTEND=noninteractive

#install mysql server and azure-cli prerequisites
#yum install -y epel-release
yum install -y mysql-community-server nodejs npm fail2ban

#Install Azure CLI
npm install -g azure-cli
