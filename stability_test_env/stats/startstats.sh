#!/bin/bash
#runstuff

nohup dstat -t -c -m -n -d -r >> /home/vagrant/stats/dstat.txt &
sleep 2

nohup top -b -d 1800 -u vagrant > /home/vagrant/stats/process.txt &
sleep 2