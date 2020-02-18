#!/bin/bash

cd /var/www/redmine/files
tar xvf ~/2020.tar
cd /var/www/redmine/log
cp ~/redmine_helpdesk.log .
rm ~/production.log
gunzip ~/production.log.gz
cp ~/production.log .
cd ~/dbdumps
pg_restore -c -U postgres -d redmine ~/redmine.custom
