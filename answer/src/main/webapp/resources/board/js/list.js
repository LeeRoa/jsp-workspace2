const modifyBtns = document.querySelectorAll('.modify-btn');

console.log('btns:', modifyBtns.length);

for (i = 0; i < modifyBtns.length; ++i) {
	modifyBtns[i].addEventListener('click', (e) => {
		
		// data-* 로 시작하는 html 속성을 자바스크립트에서 꺼내쓰도록 설계되어있다.
		console.log('event object:', e);
		console.log('event target:', e.target);
		console.log('event target\'s dataset:', e.target.dataset);
		console.log(e.target.dataset.num);
		console.log(e.target.dataset.birthDay);
		location.href = `./modify?id=${e.target.dataset.num}`;
	});	
}