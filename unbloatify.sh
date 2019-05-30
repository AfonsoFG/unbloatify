#!/bin/bash

##
#
# Remove Raspbian Jessie's fresh install bloatware
# https://github.com/AfonsoFG/unbloatify.git
# Afonso Ferreira Gomes @ 30/05/2019 http://afonsogomes.com
#
# This script removes basicaly everything from uneeded appearence
# packages to libreoffice, VLC Media Player, Minecraft, Python Games,
# Wolfram, Claws mail, etc. I run this after every fresh install.
#
# Instructions:
# 
# 1) Clone from Git to a temp folder on Desktop
#  $  cd /home/pi/Desktop
#  $  git clone https://github.com/AfonsoFG/unbloatify.git
#  $  cd unbloatify
# 
# 2) Edit the script as needed to delete the correspondig lines
     of the packages you wish to keep on your system
#  $ nano unbloatify.sh  
# 
# 3) Grant the script execution permissions
#  $ sudo chmod +x unbloatify.sh
#
# 4) Run the script
#  $ sh ./unbloatify.sh | sudo sh
#
# 5) In the end delete the temp folder from step one
#  $ sudo rm -rf /home/pi/Desktop/unbloatify
#
##

packages="
epiphany-browser
xpdf
weston
omxplayer
qt50-snapshot
qt50-quick-particle-examples
idle
idle3
python-tk
python-pygame
python-picamera
python-serial
python-pifacecommon
python-pifacedigitalio
python3-tk
python3-pygame
python3-picamera
python3-serial
python3-pifacecommon
python3-pifacedigitalio
python3-pifacedigital-scratch-handler
python3-numpy
python3-rpi.gpio
debian-reference-en
dillo
x2x
scratch
nuscratch
timidity
smartsim
penguinspuzzle
pistore
sonic-pi
oracle-java8-jdk
minecraft-pi
python-minecraftpi
wolfram-engine
libreoffice*
gpicview
oracle-java8-jdk
openjdk-7-jre
oracle-java7-jdk
openjdk-8-jre
nodered
geany
claws-mail
vlc
realvlc-vlc-*
"

for i in $packages; do
    echo apt-get --yes --purge remove $i
done

# Remove all dependencies of removed packages
echo apt-get -y autoremove

# Remove packages marked as residual "rc"
dpkg --list | grep "^rc" | cut -d " " -f 3 | xargs dpkg --purge
