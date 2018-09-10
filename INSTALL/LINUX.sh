#!/bin/bash
##################################################################################
export HEADER=LINUX
echo "[+] Installing $HEADER tools suite..."

mkdir -p /opt/$HEADER/
cd /opt/$HEADER/
##################################################################################
toollist=(

'https://github.com/dismantl/linux-injector'
'https://github.com/iagox86/dnscat2.git'
'https://github.com/LukaSikic/Unix-Privilege-Escalation-Exploits-Pack'
'https://github.com/PenturaLabs/Linux_Exploit_Suggester.git'

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