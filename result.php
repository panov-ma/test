<!doctype html>
<html>
	<head>
		<meta charset="utf8">
		<title>RESULT</title>
	</head>
	<body>
	<?php
		if(!empty($_REQUEST['name']) && !empty($_REQUEST['phone']) && !empty($_REQUEST['mail']) && !empty($_REQUEST['comment']) && !empty($_FILES['file'])){
			$name = trim(strip_tags($_REQUEST['name']));
			$phone = trim(strip_tags($_REQUEST['phone']));
			$mail = trim(strip_tags($_REQUEST['mail']));
			$message = trim(strip_tags($_REQUEST['comment']));
			?><pre><?
			echo "$name $phone $mail $message \n";
			var_dump($_FILES['file']);
			?></pre><?
			echo "DONE!";
		} 
		else {
			echo "WRONG!";
		}
	?><p><a href="/index.php">BACK</a></p>
	</body>
</html>
