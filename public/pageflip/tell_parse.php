<?php


$yourEmail = $_POST['yourEmail'];
$senderEmail = $_POST['userEmail'];
$senderMessage = $_POST['userMsg'];
$emailAddress = $_POST['authorEmail'];



$yourEmail = stripslashes($yourEmail);
$senderEmail = stripslashes($senderEmail);
$senderMessage = stripslashes($senderMessage);
$emailAddress = stripslashes($emailAddress);

$to = $emailAddress;

$from = $yourEmail;
$subject = "Check out this Flip Book!";

//Begin HTML Email Message
$message = <<<EOF
<html>
<body bgcolor="#FFFFFF">
<b>Email</b>: $yourEmail<br /><br />
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