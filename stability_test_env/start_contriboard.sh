#!/bin/bash

INSTALL="sh /home/vagrant/stats/start.sh"

echo '\nStart Contriboard:'
vagrant ssh -c "${START}"
echo 'Contriboard runnig...'