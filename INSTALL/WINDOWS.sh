#!/bin/bash
##################################################################################
export HEADER=WINDOWS
echo "[+] Installing $HEADER tools suite..."

mkdir -p /opt/$HEADER/
cd /opt/$HEADER/
##################################################################################
toollist=(

'https://github.com/byt3bl33d3r/DeathStar'
'https://github.com/byt3bl33d3r/pth-toolkit'
'https://github.com/CoreSecurity/impacket'
'https://github.com/GDSSecurity/Windows-Exploit-Suggester.git'
'https://github.com/chango77747/AdEnumerator.git'
'https://github.com/Kevin-Robertson/Invoke-TheHash'
'https://github.com/masterzen/winrm-cli'
'https://github.com/Raikia/SMBCrunch.git'
'https://github.com/Raikia/CredNinja.git'
'https://github.com/gentilkiwi/mimikatz.git'
'https://github.com/byt3bl33d3r/CrackMapExec.git'

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