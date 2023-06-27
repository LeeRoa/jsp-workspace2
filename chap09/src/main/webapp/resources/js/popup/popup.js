// opener : 이 창을 연 부모 객체 window
console.log(opener);
console.log(opener.document.getElementById('addr'));

opener.document.getElementById('addr').value = 'Apple';
opener.document.body.style.backgroundColor = 'coral';