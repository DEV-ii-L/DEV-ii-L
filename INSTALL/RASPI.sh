
#!/bin/bash
##################################################################################
export HEADER=RASPI
echo "[+] Installing $HEADER tools suite..."

mkdir -p /opt/$HEADER/
cd /opt/$HEADER/
##################################################################################
toollist=(

'https://github.com/ChristopheJacquet/PiFmRds.git'
'https://github.com/F5OEO/rpitx.git'


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


