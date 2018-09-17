#!/bin/bash
##################################################################################
export HEADER=FRMWRKS
echo "[+] Installing $HEADER tools suite..."

mkdir -p /opt/$HEADER/
cd /opt/$HEADER/
##################################################################################
toollist=(

'https://github.com/devilscream/litesploit.git'
'https://github.com/D4Vinci/One-Lin3r.git'
'https://github.com/ElevenPaths/Eternalblue-Doublepulsar-Metasploit'
'https://github.com/gh0stsec/Eternalblue-Doublepulsar-Metasploit'
'https://github.com/interference-security/Eternalblue-Doublepulsar.git'
'https://github.com/FluxionNetwork/fluxion'
'https://github.com/gabemarshall/Brosec'
'https://github.com/g0tmi1k/mpc.git'
'https://github.com/infobyte/evilgrade.git'
'https://github.com/Mr-Un1k0d3r/PowerLessShell'
'https://github.com/nccgroup/metasploitavevasion.git'
'https://github.com/secretsquirrel/the-backdoor-factory.git'
'https://github.com/trustedsec/social-engineer-toolkit/'
'https://github.com/torque59/Nosql-Exploitation-Framework.git'
'https://github.com/trustedsec/unicorn.git'
'https://github.com/Veil-Framework/Veil.git'
'https://github.com/4shadoww/usploit.git'
'https://github.com/MooseDojo/apt2.git'
'https://github.com/reyammer/shellnoob'

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
