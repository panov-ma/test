function checkForm(form) {
	var name = form.name.value;
	var n = name.match(/^[A-Za-zА-Яа-я ]*[A-Za-zА-Яа-я ]+$/);
	if (!n) {
		alert("WRONG NAME");
		return false;
	}
	var phone = form.phone.value;
	var p = phone.match(/^[0-9+][0-9- ]*[0-9- ]+$/);
	if (!p) {
		alert("WRONG PHONE");
		return false;
	}
	var mail = form.mail.value;
	var m = mail.match(/^[A-Za-z0-9][A-Za-z0-9\._-]*[A-Za-z0-9_]*@([A-Za-z0-9]+([A-Za-z0-9-]*[A-Za-z0-9]+)*\.)+[A-Za-z]+$/);
	if (!m) {
		alert("WRONG EMAIL");
		return false;
	}
	var file = form.file.value;
	if(!file) {
		alert("WRONG FILE");
		return false;
	}
	return true;
}

