#!/bin/bash

yum update -y --exclude=WALinuxAgent
yum install -y fail2ban net-tools git --exclude=WALinuxAgent
systemctl start fail2ban.service
