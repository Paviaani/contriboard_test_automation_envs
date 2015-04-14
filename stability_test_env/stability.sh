#!/bin/bash
#runstuff

SCRIPT="cd contriboard-populator/ && fab clear_database"

while :
do
	cd test/robot-framework/ContriboardTesting/
	pybot RegTestUsers.txt
	pybot Login.txt
	cd .. && cd .. && cd ..
	vagrant ssh -c "${SCRIPT}"
	echo "Press [CTRL+C]to stop..."
	sleep 1
done