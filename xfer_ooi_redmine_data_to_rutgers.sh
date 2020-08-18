#!/bin/bash

echo "pulling from WHOI server"
cd ~/tmp
scp pmena@ooi-redmine.whoi.net:/home/redmine/2020.tar .
scp pmena@ooi-redmine.whoi.net:/home/redmine/redmine_helpdesk.log .
scp pmena@ooi-redmine.whoi.net:/home/redmine/production.log.gz .
scp pmena@ooi-redmine.whoi.net:/home/redmine/dbdumps/redmine.custom .

echo "pushing to Rutgers server"
scp 2020.tar pmena@cie-redmine.intra.oceanobservatories.org:/home/redmine/
scp redmine_helpdesk.log pmena@cie-redmine.intra.oceanobservatories.org:/home/redmine/
scp production.log.gz pmena@cie-redmine.intra.oceanobservatories.org:/home/redmine/
scp redmine.custom pmena@cie-redmine.intra.oceanobservatories.org:/home/redmine/
