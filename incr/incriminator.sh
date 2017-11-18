#!/bin/bash

#----------------------------------------------------------------------
#        CREATED BY KernelFl00d
#
#   ONLY WITH EDUCATIONAL PURPOSES!!!
#
#  CONTACT: @KernelFl00d
#
#
#  I am not responsible for the damages caused by this tool!!!!
#
#
#----------------------------------------------------------------------

clear
cat res/banner
echo ""
echo "                                         By KernelFl00d"
while :
do
echo ""
echo "--------------------------------------------------------"
echo "" 
echo "  1.- Website Attacks" 
echo "  2.- Malware" 
echo "  3.- Proxy" 
echo "  4.- Denial of Service (DoS)" 
echo "  5.- Wireless Attacks" 
echo "  6.- Social Media (Experimental!)" 
echo "  7.- Other" 
echo "  8.- About" 
echo "  9.- Exit" 
echo ""
echo "--------------------------------------------------------"
echo ""
echo -n "Select an option [Incriminator]> "
read opt
case $opt in
1) echo "[*] Selected: Website Attacks";
echo "";
cd res/web/
sh exec.sh
;;
2) echo "[*] Selected: Malware";
echo "";
cd  res/malware/
sh exec.sh
;;
3) echo "[*] Selected: Proxy";
echo "";
cd res/proxy/
sh exec.sh
;;
4) echo "[*] Selected: DoS";
echo "";
cd res/dos/
sh exec.sh
;;
5) echo "[*] Selected: Wireless Attacks";
echo "";
cd res/wireless/
sh exec.sh
;;
6) echo "[*] Selected: Social Media (Experimental!)";
echo "";
cd res/social/
sh exec.sh
;;
7) echo "[*] Selected: Other";
echo "";
cd res/other/
sh exec.sh
;;
8) echo "";
echo "0======== { About Incriminator } ========0"
echo ""
echo "Incriminator is an OpenSource Project with educational purposes that allows you to incriminate other devices during a cybercrime.
The project is now in version 1.0
If you find a bug please, report it.

Thank you for downloading...

FOR EDUCATIONAL PURPOSES ONLY!!!!!!!
I am not responsible for the damages caused by this tool!!!!

Software used:
- BeeLogger (https://github.com/4w4k3/BeeLogger)
- AP-Fucker (https://github.com/mattoufoutu/scripts/blob/master/AP-Fucker.py)
- DHCPwn (https://github.com/mschwager/dhcpwn)
- Squid Proxy (http://www.squid-cache.org/)
- Apache HTTP Server (http://httpd.apache.org/)
- Exiftool (http://sno.phy.queensu.ca/~phil/exiftool/)
- PHP  (http://php.net)
- Metasploit Framework (http://metasploit.com)
- Python (http://www.python.org/)
- MacChanger (http://ftp.rediris.es/mirror/GNU/macchanger/)
- ProxyChains (http://proxychains.sourceforge.net/)
- Hydra (http://www.thc.org/thc-hydra/)
- Medusa (http://foofus.net/goons/jmk/medusa/medusa.html)"
exit;;
9) echo "[*] Exiting...";
exit 1;;
*) echo "[!] $opt is not a valid option.";
echo "Press enter to continue...";
read foo;;
esac
done

