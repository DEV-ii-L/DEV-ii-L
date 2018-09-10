#!/bin/bash
##################################################################################
echo "[+] Branding..."


echo "[+]  Updating motd to show  DEViiL release.."
rm /etc/motd
cp /opt/DEV-ii-L/src/motd /etc/motd
chattr +i /etc/motd


echo "[+] Updating resolv.conf ..."
rm -rf /etc/resolv.conf
cp /opt/DEV-ii-L/src/resolv.conf /etc/resolv.conf
chattr +i /etc/resolv.conf


echo "[+]  Updating hosts to  DEViiL .."
rm -rf /etc/hosts
cp /opt/DEV-ii-L/src/hosts /etc/hosts

echo "[+]  Updating DEViiL hostname.."
echo "DEViiL" > /etc/hostname
chattr +i /etc/hostname




echo "[+] Updating SLIM ..."

mkdir /usr/share/slim/themes/
mkdir /usr/share/slim/themes/deviil_dark/


cp /opt/DEV-ii-L/src/slim/deviil_dark/slim-background.png  /usr/local/share/slim/themes/deviil_dark/background.png
cp /opt/DEV-ii-L/src/slim/deviil_dark/panel-pulka-grey.png /usr/local/share/slim/themes/deviil_dark/panel.png
cp /opt/DEV-ii-L/src/slim/deviil_dark/slim.theme /usr/local/share/slim/themes/deviil_dark/slim.theme

mv /etc/slim.conf /etc/slim.conf.old
cp /opt/DEV-ii-L/src/slim.conf /etc/slim.conf


echo "[+] Updating GRUB ..."

cp /opt/DEV-ii-L/src/boot/boot_ii.png /boot/grub/boot_ii.png

echo 'GRUB_BACKGROUND="/boot/grub/boot_ii.png"' >> /etc/default/grub

echo "[+] Updating xfce4 ..."

cp /opt/DEV-ii-L/src/xfce4* /root/.config/xfce4/xfconf/
cp /opt/DEV-ii-L/src/xfce4* /home/ii/.config/xfce4/xfconf/


echo "[+] Creating ..."

echo "[+] Creating desktops..."

/opt/DEV-ii-L/src/wall/
/opt/DEV-ii-L/src/icons/


##################################################################################
echo "[+] Defacing done.."
cd /opt/
###################################################################################



############################### DEFACE ############################################






###################################################################################