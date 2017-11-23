<!doctype html>
<html>
   <head>
      <meta charset="utf8">
      <title>INPUT</title>
	</head>
	<body>
		<script type="text/javascript" src="script.js">		</script>
		<form id="form" onsubmit="return checkForm(this)" method="post" action="result.php" enctype="multipart/form-data">
			<span>NAME<span>
			<input type="text" name="name"><br>
			<span>PHONE</span>
			<input type="text" name="phone"><br>
			<span>EMAIL</span>
			<input type="text" name="mail"><br>
			<span>COMMENT</span>
			<textarea name="comment"></textarea><br>
			<span>FILE</span>
			<input type="hidden" name="MAX_FILE_SIZE" value="5000">
			<input name="file" type="file"><br>
			<input type="submit" value="SUBMIT">
		</form>
	</body>
</html><?
