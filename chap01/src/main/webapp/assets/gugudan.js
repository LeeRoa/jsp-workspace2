
const out = document.getElementById('gugudan');

for(dan = 2; dan <= 9; ++dan) {
	out.innerHTML += `<div class="dan">${dan}단</dan>`;
	for(gop = 1; gop <= 9; ++gop) {
		out.innerHTML += `<div class="gop">${dan}x${gop}=${dan*gop}</div>`;
	}	
}