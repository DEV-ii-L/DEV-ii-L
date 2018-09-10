#!/bin/bash
##################################################################################
export HEADER=REPORTING
echo "[+] Creating default $HEADER folder structure..."

mkdir -p /$HEADER/
mkdir /$HEADER/KLIENT_A/
mkdir /$HEADER/KLIENT_A/PROJEKT_1
mkdir /$HEADER/KLIENT_A/PROJEKT_2

echo "[+] Creating default info.txt..."


touch /$HEADER/KLIENT_A/PROJEKT_1/info.txt
echo "login:" >> /$HEADER/KLIENT_A/PROJEKT_1/info.txt
echo "pass:" >> /$HEADER/KLIENT_A/PROJEKT_1/info.txt
echo "ip/url:" >> /$HEADER/KLIENT_A/PROJEKT_1/info.txt

echo "[+] Creating default findings.txt..."

touch /$HEADER/KLIENT_A/PROJEKT_1/findings.txt
echo "F1" >> /$HEADER/KLIENT_A/PROJEKT_1/findings.txt
echo "Dotaz:" >> /$HEADER/KLIENT_A/PROJEKT_1/findings.txt
echo "Odpoved:" >> /$HEADER/KLIENT_A/PROJEKT_1/findings.txt


echo "[+] Creating default report.txt..."

touch /$HEADER/KLIENT_A/PROJEKT_1/report.txt
echo "CUT and PASTE here" >> /$HEADER/KLIENT_A/PROJEKT_1/report.txt
##################################################################################

echo "[+] $HEADER installed."

cd /opt/
###################################################################################