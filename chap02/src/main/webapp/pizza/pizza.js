const crustBtn = document.getElementById('crust-btn');
const toppingBtn = document.getElementById('sauce-btn');
const cheeseBtn = document.getElementById('cheese-btn');

const crustDiv = document.getElementById('crust');
const toppingDiv = document.getElementById('topping');
const cheeseDiv = document.getElementById('cheese');

crustBtn.addEventListener('click', () => otherHidden(crustBtn));
toppingBtn.addEventListener('click', () => otherHidden(toppingBtn));
cheeseBtn.addEventListener('click', () => otherHidden(cheeseBtn));

function otherHidden(btn) {
	
	if (btn == crustBtn) {
		console.log('crust');
		crustDiv.style.visibility = 'visible';
		toppingDiv.style.visibility = 'hidden';
		cheeseDiv.style.visibility = 'hidden';
	} else if (btn == toppingBtn) {
		console.log('topping');
		toppingDiv.style.visibility = 'visible';
		crustDiv.style.visibility = 'hidden';
		cheeseDiv.style.visibility = 'hidden';
	} else if (btn == cheeseBtn) {
		console.log('cheese');
		cheeseDiv.style.visibility = 'visible';
		crustDiv.style.visibility = 'hidden';
		toppingDiv.style.visibility = 'hidden';
	}
}