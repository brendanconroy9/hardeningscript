#!/bin/bash

# this script will set up automatic script running with cron. script1 will run once a month on the first of the month script2 will run once a week on every monday
sudo /bin/bash -c 'echo "0 0 1 * * /home/sysadmin/project1/script1.sh" >> /var/spool/cron/crontabs/sysadmin'
sudo /bin/bash -c 'echo "0 0 * * 1 /home/sysadmin/project1/script2.sh" >> /var/spool/cron/crontabs/sysadmin'
