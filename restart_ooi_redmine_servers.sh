#!/bin/bash

echo "stopping postgres and apache"
systemctl stop postgresql
systemctl stop httpd

sleep 5

echo "starting postgres and apache"
systemctl start postgresql
systemctl start httpd
