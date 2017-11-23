<?php
// Brackets
// 40 min ish
if(!empty($argv[1])) {
	$result = check($argv[1]);
	echo $result ? 'True' : 'False';
	echo "\n";
}
else {
	echo 'Empty argv[1]'."\n";
}
function check($str) {
	$len = strlen($str);
	if($len == 0) return false;
	$lBrCnt = 0;
	$rBrCnt = 0;
	for($i = 0; $i < $len; $i++) {
		if($str[$i] == '(') { 
			$lBrCnt += 1;
			//echo 'LEFT ';
		}
		else if($str[$i] == ')') {
			$rBrCnt += 1;
			if($lBrCnt < $rBrCnt) {
				//echo 'FAIL ';
				return false;
			}
			//echo 'RIGHT ';
		}
		else {
			echo 'String not valid'."\n";
			return false;
		}
	}
	return true;
}
