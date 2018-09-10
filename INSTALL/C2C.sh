#!/bin/bash
##################################################################################
export HEADER=C2C
echo "[+] Installing $HEADER tools suite..."

mkdir -p /opt/$HEADER/
cd /opt/$HEADER/
##################################################################################
toollist=(

'https://github.com/xtr4nge/FruityC2-Client.git'
'https://github.com/xtr4nge/FruityC2.git'
'https://github.com/xtr4nge/FruityWifi.git'
'https://github.com/ahhh/Reverse_DNS_Shell.git'
'https://github.com/ytisf/PyExfil.git'

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