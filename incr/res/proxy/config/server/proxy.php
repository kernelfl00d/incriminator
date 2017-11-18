<?php
$port = $_GET['port']; 
$ip = $_SERVER['REMOTE_ADDR']; 
$date = date("Y-m-d;h:i:s"); 
$f = fopen("proxy.log", "a"); 
fwrite ($f, 
'IP: ['.$ip.']
Port: ['.$port.'] 
Date: ['.$date.']
-----------------------------------------');
fclose($f);
?>

