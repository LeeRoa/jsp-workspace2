let elements = document.getElementsByClassName("column");

function one() {
	
	for (i = 0; i < elements.length; ++i) {
		elements[i].style.flex = "100%";
	}
}
function two() {
	
	for (i = 0; i < elements.length; ++i) {
		elements[i].style.flex = "50%";
	}
}
function four() {
	
	for (i = 0; i < elements.length; ++i) {
		elements[i].style.flex = "25%";
	}
}

let header = document.getElementById("header");
let btns = header.getElementsByClassName("btn");

for (i = 0; i < btns.length; ++i) {
	btns[i].addEventListener("click", function() {
		var curr = document.getElementsByClassName("active");
		curr[0].className = curr[0].className.replace(" active", "");
		this.className += " active";
	});
}