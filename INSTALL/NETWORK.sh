#!/bin/bash
##################################################################################
export HEADER=NETWORK
echo "[+] Installing $HEADER tools suite..."

mkdir -p /opt/$HEADER/
cd /opt/$HEADER/
##################################################################################
toollist=(

'https://github.com/ilneill/Py-CiscoT7.git'
'https://github.com/nccgroup/vlan-hopng---frogger.git'
'https://github.com/reverse-shell/routersploit.git'
'https://github.com/SECFORCE/sparta'
'https://github.com/sensepost/autoresponder.git'
'https://github.com/brav0hax/easy-creds.git'
'https://github.com/byt3bl33d3r/MITMf.git'
'https://github.com/xtr4nge/sslstrip.git'
'https://github.com/RUB-NDS/PRET'

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