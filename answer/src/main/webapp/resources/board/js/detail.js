const modifyBtn = document.querySelector('#modify-btn');

modifyBtn.addEventListener('click', (e) => {
	location.href = `./modify?id=${e.target.dataset.id}`;
});