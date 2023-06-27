let submit = document.getElementById('submit');
let address = document.getElementById('address');

address.addEventListener("input", function() {
	
	if (address.value.trim() == "") {
		submit.disabled = true;
	} else {
		submit.disabled = false;
	}
	
});