
#!/bin/bash
##################################################################################
export HEADER=RASPI
echo "[+] Installing $HEADER tools suite..."

mkdir -p /opt/$HEADER/
cd /opt/$HEADER/
wget https://bitbucket.org/dani_thomas/rf433ctrl/get/4a63942803e6.zip -o rf433ctrl.zip
##################################################################################
toollist=(

'https://github.com/ChristopheJacquet/PiFmRds.git'
'https://github.com/F5OEO/rpitx.git'
'https://github.com/lthiery/SPI-Py.git'
'https://github.com/mxgxw/MFRC522-python.git'
'https://github.com/WiringPi/WiringPi.git'

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


