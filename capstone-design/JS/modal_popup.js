//모달 팝업 창
//css에 아래 내용 추가
//.modal.on {
//	display: block;
//}

const modal = document.querySelectorAll('.modal');
const closeBtns = document.querySelectorAll('.close_btn');
const modalBtns = document.querySelectorAll('.modal_btn');

modalBtns.forEach(function(btn, index) {
    btn.addEventListener('click', function() {
        modal[index].classList.add('on');
    });
});

closeBtns.forEach(function(btn, index) {
    btn.addEventListener('click', function() {
        modal[index].classList.remove('on');
    });
});
