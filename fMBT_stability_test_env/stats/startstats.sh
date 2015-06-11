#!/bin/bash
#runstuff

nohup dstat -t -c -m -n -d -r --top-cpu --top-mem 10 >> /home/vagrant/stats/dstat.txt &
sleep 2

nohup top -b -d 1800 > /home/vagrant/stats/process.txt &
sleep 2