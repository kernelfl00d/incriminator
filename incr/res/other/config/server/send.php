<?php 
$to = $_POST['to'];

$subject = $_POST['subject'];

$message = $_POST['msg'];

$from = $_POST['from'];

$headers = "From:"	.	$from;

$mail = mail($to,$subject,$message,$headers,$from); 
 
 if($mail){

 	echo "Email Sent!";
 }else{

 	echo "Something Was Wrong! :c";
 }
 ?>
