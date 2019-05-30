# Unbloatify Raspbian Jessie's fresh install bloatware
Remove Raspbian Jessie's fresh install bloatware


This script removes basicaly everything from uneeded appearence packages to libreoffice, VLC Media Player, Minecraft, Python Games, Wolfram, Claws mail, etc. I run this after every fresh install.

#### Afonso Gomes @ 30/05/2019

  

## Instructions:

1) Clone from Git to a temp folder on Desktop
```
 $  cd /home/pi/Desktop
 $  git clone https://github.com/AfonsoFG/unbloatify.git
 $  cd unbloatify
```
 
2) Edit the script as needed to comment out the packages you wish to keep on your system
```
 $ nano unbloatify.sh  
```

3) Grant the script execution permissions
```
 $ sudo chmod +x unbloatify.sh
```

4) Run the script
```
 $ sh ./unbloatify.sh | sudo sh
```

5) In the end delete the temp folder from step one
```
 $ sudo rm -rf /home/pi/Desktop/unbloatify
```
