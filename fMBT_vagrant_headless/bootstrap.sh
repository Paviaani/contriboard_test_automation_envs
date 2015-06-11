#!/bin/bash
#
# Used to 'provision' the vagrant machine. Basically is run after the machine
# is created so you don't have to worry about installing everything yourself.

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"

# RobotFramework
sudo apt-get update
sudo apt-get install -y firefox
sudo apt-add-repository -y ppa:antti-kervinen/fmbt-devel; sudo apt-get update; sudo apt-get install -y fmbt*
sudo apt-get install -y python-pip
sudo pip install selenium

#  vnc4server for virtual display
sudo apt-get install -y vnc4server

