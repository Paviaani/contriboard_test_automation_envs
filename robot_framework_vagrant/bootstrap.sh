#!/bin/bash
#
# Used to 'provision' the vagrant machine. Basically is run after the machine
# is created so you don't have to worry about installing everything yourself.

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"


# Needed stuff for testing


sudo apt-get update
sudo wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install robotframework
sudo pip install robotframework-selenium2library

# Create test run folder
mkdir runtests
sudo cp -r /home/vagrant/teamboard-test/robot-framework/. /home/vagrant/runtests
sudo chmod -R 777 /home/vagrant/runtests

# Install RIDE(Test Editor)
#sudo apt-get -y install python-wxgtk2.8
#pip install robotframework-ride
#ride.py