#!/bin/bash -v

yum install -y python26-pip gcc
pip install croniter
OPERATOR=/home/ec2-user/ether.py
wget -O $OPERATOR https://raw.githubusercontent.com/octanner/ether/master/ether.py
chown ec2-user:ec2-user $OPERATOR
chmod 644 $OPERATOR
echo "*/5 * * * * ec2-user python $OPERATOR" >> /etc/crontab