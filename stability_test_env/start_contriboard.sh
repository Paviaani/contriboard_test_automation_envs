#!/bin/bash

START="sh /home/vagrant/stats/start.sh"

#Get newest repos for Contriboard

echo '\nUpdate api repository:'
cd api && git pull && cd ..
echo '\nUpdate io repository:'
cd io && git pull && cd ..
echo '\nUpdate client-react repository:'
cd client-react && git pull && cd ..
echo '\nUpdate populator repository:'
cd populator && git pull && cd ..
echo '\nUpdate img repository:'
cd img && git pull && cd ..

#Start Contriboard

echo '\nStart Contriboard:'
vagrant ssh -c "${START}"
echo 'Contriboard runnig...'