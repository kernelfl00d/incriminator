#!/bin/bash
echo ""
echo ""
echo ""
echo "Some features of this tool requires a server (Send Mail & Get Proxy Data) for Send Mail you can use default server (http://incriminator-mailer.000webhostapp.com/send.php) but is better (for privacy) to use your own server, to use the Get Proxy Data you need your own server so you can upload Send Mail and Get Proxy Data PHP Files (Send Mail: res/other/config/server/send.php Get Proxy Data: res/proxy/config/server/proxy.php)"
echo ""
echo -n "Type your Send Mail URL (Eg.: http://server.com/send.php): "
read servs
echo -n "Type your Get Proxy Data URL (Eg.: http://server.com/proxy.php): "
read servp
echo "OK... CONFIGURING ALL...";
echo "$servs" > res/other/config/server.txt
echo "$servp" > res/proxy/config/server.txt
rm log.txt
echo "[OK] INCRIMINATOR IS NOW CONFIGURED"
rm CONFIGURE.sh
