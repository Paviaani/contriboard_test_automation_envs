#!/bin/bash
# Needed stuff for testing

sudo apt-add-repository -y ppa:antti-kervinen/fmbt-devel; sudo apt-get update; sudo apt-get install -y fmbt*
sudo apt-get install -y python-pip
sudo pip install selenium

# Gnuplot to make dstat to graph
sudo apt-get install -y gnuplot
