#!/bin/bash
##################################################################################
export HEADER=WIFI
echo "[+] Installing $HEADER tools suite..."

mkdir -p /opt/$HEADER/
cd /opt/$HEADER/
##################################################################################
toollist=(

'https://github.com/derv82/wifite2.git'
'https://github.com/esc0rtd3w/wifi-hacker.git'
'https://github.com/Tle7839/wifiphiser.git'
'https://github.com/SilentGhostX/HT-WPS-Breaker.git'
'https://github.com/vnik5287/wpa-autopwn.git'
'https://github.com/xtr4nge/giskismet.git'
'https://github.com/scipag/btle-sniffer'
'https://github.com/DanMcInerney/wifijammer.git'


)
##################################################################################
for repo in ${toollist[@]};do 
{
git clone $repo; } || {
dir=${repo##*/}
dir=${dir%.*}
cd $dir
git pull origin master
cd ..
}
done
cd /opt/
echo "[+] $HEADER tool set installed."
###################################################################################
