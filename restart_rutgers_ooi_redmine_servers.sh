#!/bin/bash

echo "stopping postgres and apache"
sudo /usr/bin/systemctl stop postgresql
sudo /sbin/service httpd stop

sleep 5

echo "starting postgres and apache"
sudo /usr/bin/systemctl start postgresql
sudo /sbin/service httpd start
