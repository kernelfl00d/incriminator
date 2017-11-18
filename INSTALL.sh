#!/bin/bash
clear 
while :
do
echo "By continuing you are accepting that this tool ONLY WILL BE USED IN EDUCATIONAL PURPOSES!!!"
echo "Press Enter to continue..."
read foo;
echo -n "Do you have Metasploit Framework installed? [y/n]: "
read opt
case $opt in
y) echo "OK... INSTALLING REQUIREMENTS...";
echo "Please, probably a packet is not in your APT repository, try to install them via DEB package or this tool wont work successfully!!";
apt-get update
apt-get install python
apt-get install perl
apt-get install exiftool
apt-get install libimage-exiftool-perl
apt-get install git
apt-get install apache2
apt-get install python
apt-get install python-pip
apt-get install python-scapy
apt-get install python-flake8
apt-get install python3
apt-get install python3-scapy
apt-get install pip 
apt-get install hydra
apt-get install medusa
apt-get install proxychains
apt-get install macchanger
mv incr/incriminator.sh incriminator
mv incr/res res
chmod 777 incriminator
rm -R incr
chmod 777 res/malware/dep/bee/install.sh && sh res/malware/dep/bee/install.sh
python res/wireless/dep/setup.py install
cp -r build res/wireless/dep/build
cp -r dhcpwn.egg-info res/wireless/dep/dhcpwn.egg-info
cp -r dist res/wireless/dep/dist
rm -R dist
rm -R dhcpwn.egg-info
rm -R build
rm incr.zip
cp setup/CONFIGURE.sh CONFIGURE.sh 
rm -R setup
chmod 777 CONFIGURE.sh
sh CONFIGURE.sh
rm INSTALL.sh
exit
;;
n) echo "Please, to use this script you need to install Metaspoit Framework before...";
exit 1;;
*) echo "$opt is not a valid option.";
echo "Press enter to continue...";
read foo;;
esac
done 
exit
