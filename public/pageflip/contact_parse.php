<?php


$senderName = $_POST['userName'];
$senderEmail = $_POST['userEmail'];
$senderMessage = $_POST['userMsg'];
$emailAddress = $_POST['authorEmail'];



$senderName = stripslashes($senderName);
$senderEmail = stripslashes($senderEmail);
$senderMessage = stripslashes($senderMessage);
$emailAddress = stripslashes($emailAddress);

$to = $emailAddress;

$from = $senderEmail;
$subject = "Email from your flipbook";

//Begin HTML Email Message
$message = <<<EOF
<html>
<body bgcolor="#FFFFFF">
<b>Name</b>: $senderName<br /><br />
<b>Email</b>: $senderEmail<br /><br />
<b>Message</b>: $senderMessage<br />
</body>
</html>
EOF;
//end of message
$headers = "From: $from\r\n";
$headers .= "Content-type: text/html\r\n";
$to = "$to";

mail($to, $subject, $message, $headers);

exit();
?>