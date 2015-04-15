#!/bin/bash
#runstuff

nohup dstat -t -c -m -n -d -r >> /home/vagrant/stats/dstat.txt &
sleep 2