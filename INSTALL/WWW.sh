#!/bin/bash
export HEADER=WWW
echo "[+] Installing $HEADER tools suite..."



# This script sets up a directory. 

# The directory is in /var/www/html/ and contains tools/scripts 
# that we often pull down from and run on victim machines.




cd /var/www/html/

wwwlist=(
'https://github.com/ChrisTruncer/WMIOps.git'
'https://github.com/byt3bl33d3r/CrackMapExec.git'
'https://github.com/Kevin-Robertson/Inveigh.git'
'https://github.com/secabstraction/Create-WMIshell.git'
'https://github.com/secabstraction/WmiSploit.git'
'https://github.com/PowerShellMafia/PowerSploit.git'
'https://github.com/samratashok/nishang.git'
'https://github.com/besimorhino/powercat.git'
'https://github.com/Arvanaghi/SessionGopher-Arvanaghi'
'https://github.com/xorrior/RandomPS-Scripts'
'https://github.com/dafthack/HostRecon'
'https://github.com/dafthack/DomainPasswordSpray'

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
echo "[+] $HEADER tool set  installed in /var/www/html/."
###################################################################################