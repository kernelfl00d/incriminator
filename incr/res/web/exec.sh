clear
while :
do
echo ""
echo "Website Attacks"
echo "--------------------------------------"
echo ""
echo "  1.- SQL Injection"
echo "  2.- XSS Attacks"
echo "  3.- Command Injection (RCE)"
echo "  4.- RFI Attacks"
echo ""
echo "  99.- Exit"
echo "--------------------------------------"
echo ""
echo -n "Select an option [Website Attacks]> "
read op1
case $op1 in
1) echo "[*] Selected: SQL Injection";
cd sqli/
sh exec.sh
;;
2) echo "[*] Selected: XSS Attacks";
cd xss/
sh exec.sh
;;
3) echo "[*] Selected: Command Injection (RCE)";
cd rce/
sh exec.sh
;;
4) echo "[*] RFI Attacks...";
cd rfi/
sh exec.sh
;;
99) echo "[*] Exiting...";
exit 1;;
*) echo "[!] $op1 is not a valid option.";
echo "Press enter to continue...";
read foo;;
esac
done

