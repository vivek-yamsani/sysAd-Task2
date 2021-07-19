#!/bin/bash

/root/permit.sh

mv /root/schedule.sh /home/jay_jay/schedule.sh

mv /root/attendance.sh /home/jay_jay/attendance.sh

sudo /bin/bash -c 'echo "30 0 * * * root /home/jay_jay/schedule.sh" >> /etc/crontab'

mv /root/getMoM.sh /home/jay_jay/getMoM.sh

mv /root/genMoM.sh /home/jay_jay/genMoM.sh
mkdir /home/temp
mv /root/MoMs.txt /home/temp/MoMs.txt
mv /root/making\ db.sql  /home/temp/making_db.sql
