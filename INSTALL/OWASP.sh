#!/bin/bash
##################################################################################
export HEADER=OWASP
echo "[+] Installing $HEADER tools suite..."

mkdir -p /opt/$HEADER/
cd /opt/$HEADER/
##################################################################################
toollist=(

'https://github.com/hatRiot/clusterd'
'https://github.com/epinna/tplmap'
'https://github.com/faizann24/XssPy.git'
'https://github.com/federicodotta/Java-Deserialization-Scanner.git'
'https://github.com/joaomatosf/jexboss.git'
'https://github.com/johndekroon/serializekiller.git'
'https://github.com/sqlmapproject/sqlmap.git'
'https://github.com/sullo/nikto.git'
'https://github.com/yehia-mamdouh/XSSYA.git'
'https://github.com/meefik/keystorebreaker'

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