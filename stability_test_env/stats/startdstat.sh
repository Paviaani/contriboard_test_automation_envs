#!/bin/bash
#runstuff

dstat -c -m -r -t --nocolor >> /home/vagrant/stats/dstat.txt &
sleep 2