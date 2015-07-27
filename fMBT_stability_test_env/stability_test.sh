#!/bin/bash
#runstuff

CLEARDB="cd contriboard-populator/ && fab clear_database"
STATS="sh /home/vagrant/stats/startstats.sh"
APIVERSION="cd /home/vagrant/teamboard-api/ && echo Api version: >> /home/vagrant/stats/version.txt && git describe >> /home/vagrant/stats/version.txt && echo '\n' >> /home/vagrant/stats/version.txt"
IOVERSION="cd /home/vagrant/teamboard-io/ && echo IO version: >> /home/vagrant/stats/version.txt && git describe >> /home/vagrant/stats/version.txt && echo '\n' >> /home/vagrant/stats/version.txt"
CLIENTVERSION="cd /home/vagrant/teamboard-client-react/ && echo Client version: >> /home/vagrant/stats/version.txt && git describe >> /home/vagrant/stats/version.txt && echo '\n' >> /home/vagrant/stats/version.txt"
DBVERSION="echo MongoDB version: >> /home/vagrant/stats/version.txt && mongod --version >> /home/vagrant/stats/version.txt && echo '\n' >> /home/vagrant/stats/version.txt"
SYSINFO="sudo lshw >> /home/vagrant/stats/sysinfo.txt"
SETTIME="sudo ln -sf /usr/share/zoneinfo/Europe/Helsinki /etc/localtime && date"
COUNTER=0


echo 'Set time:'
vagrant ssh -c "${SETTIME}"
echo 'Time set...'
echo '\nGet Updated tests:'
cd test/ && git pull
cd ..
echo '\nClear Database:'
vagrant ssh -c "${CLEARDB}"
echo 'Database Cleared...\n'
echo '\nGet Contriboard API version:'
vagrant ssh -c "${APIVERSION}"
echo 'API version at /stats/version.txt\n'
echo 'Get Contriboard IO version:'
vagrant ssh -c "${IOVERSION}"
echo 'IO version at /stats/version.txt\n'
echo 'Get Contriboard CLIENT version:'
vagrant ssh -c "${CLIENTVERSION}"
echo 'CLIENT version at /stats/version.txt\n'
echo 'Get Contriboard MONGODB version:'
vagrant ssh -c "${DBVERSION}"
echo 'MONGODB version at /stats/version.txt\n'
echo 'Get System info:'
vagrant ssh -c "${SYSINFO}"
echo 'System info at /stats/sysinfo.txt\n'
echo 'Start monitoring:'
vagrant ssh -c "${STATS}"
echo 'Monitors at /stats/dstat.txt and /stats/process.txt\n'


while COUNTER=$((COUNTER+1))
do
	echo '\nTest loop round '$COUNTER' started:' >> stats/version.txt && date >>  stats/version.txt
	cd test/fmbt/Contriboard
	fmbt test.conf
	killall firefox
	echo 'Test loop round '$COUNTER' finished:' >> stats/version.txt && date >>  stats/version.txt
	echo '\nPress [CTRL+C]to stop...'
	sleep 2
done
