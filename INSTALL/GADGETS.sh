#!/bin/bash
##################################################################################
export HEADER=GADGETS
echo "[+] Installing $HEADER tools suite..."

mkdir -p /opt/$HEADER/
cd /opt/$HEADER/
##################################################################################
toollist=(

'https://github.com/mame82/P4wnP1.git'
'https://github.com/samyk/poisontap'
'https://github.com/danielwhite84/Auto-Hacking-USB'
'https://github.com/mark-orion/STS-PiLot.git'

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