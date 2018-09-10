#!/bin/bash
##################################################################################
export HEADER=MOBIL
echo "[+] Installing $HEADER tools suite..."

mkdir -p /opt/$HEADER/
cd /opt/$HEADER/
##################################################################################
toollist=(

'https://github.com/ajinabraham/Mobile-Security-Framework-MobSF.git'
'https://github.com/AndroBugs/AndroBugs_Framework.git'

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