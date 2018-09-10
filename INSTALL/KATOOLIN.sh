#!/bin/bash
############################
echo "prepare to install kaoolin"
echo " switch to kali apt-get repository with KAOOLIN "

############################

cp /etc/apt/sources.list /etc/apt/sources.list_devuan
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
cd /opt/
git clone https://github.com/LionSec/katoolin.git
cd /opt/katoolin
echo " kaolin start..DO NOT INTERUPT"
python /opt/katoolin.py

############################
echo " switch back FROM KAOOLIN to DEVUAN"
############################
cp  /etc/apt/sources.list /etc/apt/sources.list_with_kali
rm /etc/apt/sources.list
cp /etc/apt/sources.list_devuan /etc/apt/sources.list
echo " we are BACK to DEVUAN ..."