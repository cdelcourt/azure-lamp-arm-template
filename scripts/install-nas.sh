#!/bin/bash

yum install -y epel-release
yum update -y --exclude=WALinuxAgent
yum install -y fail2ban net-tools git --exclude=WALinuxAgent
systemctl enable fail2ban.service && systemctl start fail2ban.service
