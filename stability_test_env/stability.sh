#!/bin/bash
#runstuff

CLEARDB="cd contriboard-populator/ && fab clear_database"
DSTAT="dstat -c -m -r -t --nocolor >> /home/vagrant/stats/dstat.txt &"
APIVERSION="cd /home/vagrant/teamboard-api/ && echo Api version: >> /home/vagrant/stats/version.txt && git describe >> /home/vagrant/stats/version.txt"
IOVERSION="cd /home/vagrant/teamboard-io/ && echo IO version: >> /home/vagrant/stats/version.txt && git describe >> /home/vagrant/stats/version.txt"
CLIENTVERSION="cd /home/vagrant/teamboard-client-react/ && echo Client version: >> /home/vagrant/stats/version.txt && git describe >> /home/vagrant/stats/version.txt"
DBVERSION="echo MongoDB version: >> /home/vagrant/stats/version.txt && mongod --version >> /home/vagrant/stats/version.txt"
SYSINFO="sudo lshw >> /home/vagrant/stats/sysinfo.txt"

vagrant ssh -c "${APIVERSION}"
vagrant ssh -c "${IOVERSION}"
vagrant ssh -c "${CLIENTVERSION}"
vagrant ssh -c "${DBVERSION}"
vagrant ssh -c "${SYSINFO}"
vagrant ssh -c "${DSTAT}"

while :
do
	cd test/robot-framework/ContriboardTesting/
	pybot RegTestUsers.txt
	pybot Login.txt
	cd .. && cd .. && cd ..
	vagrant ssh -c "${CLEARDB}"
	echo "Press [CTRL+C]to stop..."
	sleep 1
done