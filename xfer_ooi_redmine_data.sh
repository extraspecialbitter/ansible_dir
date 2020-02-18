#!/bin/bash

echo "pulling from Rutgers server"
cd ~/tmp
scp pmena@cie-redmine.intra.oceanobservatories.org:/home/redmine/2020.tar .
scp pmena@cie-redmine.intra.oceanobservatories.org:/home/redmine/redmine_helpdesk.log .
scp pmena@cie-redmine.intra.oceanobservatories.org:/home/redmine/production.log.gz .
scp pmena@cie-redmine.intra.oceanobservatories.org:/home/redmine/dbdumps/redmine.custom .

echo "pushing to WHOI server"
scp 2020.tar pmena@ooi-redmine.whoi.net:/home/redmine/
scp redmine_helpdesk.log pmena@ooi-redmine.whoi.net:/home/redmine/
scp production.log.gz pmena@ooi-redmine.whoi.net:/home/redmine/
scp redmine.custom pmena@ooi-redmine.whoi.net:/home/redmine/
