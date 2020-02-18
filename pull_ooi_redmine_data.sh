#!/bin/bash

cd /var/www/redmine/files
rm -f ~/2020.tar
tar cvf ~/2020.tar 2020/
cd ../log
rm -f ~/production.log* 
rm -f ~/redmine_helpdesk.log
cp redmine_helpdesk.log ~
cp production.log ~
gzip ~/production.log
cd ~/dbdumps
rm -f redmine.custom
pg_dump -U redmine --schema public --format=c -f /home/redmine/dbdumps/redmine.custom
