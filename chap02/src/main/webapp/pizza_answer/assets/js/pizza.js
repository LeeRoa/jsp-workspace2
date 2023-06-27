
const options = document.getElementsByClassName('options');
const options_arr = [];

const option_btns = document.getElementsByClassName('option-btns');

for (i = 0; i < options.length; ++i) {
	options_arr.push(options[i]);
}

option_btns[0].addEventListener('click', () => { viewOption(CRUST)});
option_btns[1].addEventListener('click', () => { viewOption(TOPPING)});
option_btns[2].addEventListener('click', () => { viewOption(CHEESE)});

const CRUST = 0;
const TOPPING = 1;
const CHEESE = 2;

function viewOption(num) {
	options_arr.forEach((option) => {
		option.style.display = 'none';
	});
	
	options[num].style.display = 'grid';
}

viewOption(CRUST);

console.log(options);