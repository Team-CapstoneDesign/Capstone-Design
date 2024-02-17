function checkValue() {
    if (newMem.name.value === "") {
        alert("이름을 입력해주세요!");
        newMem.name.focus();
        return;
    }

    if (newMem.birth.value === "") {
        alert("생년월일을 입력해주세요!");
        newMem.birth.focus();
        return;
    }

    if (newMem.tel1.value === "" || newMem.tel2.value === "" || newMem.tel3.value === "") {
        alert("전화번호를 입력해주세요!");
        newMem.tel1.focus();
        return;
    }

    if (newMem.id.value === "") {
        alert("아이디를 입력해주세요!");
        newMem.id.focus();
        return;
    }

    if (newMem.pwd.value === "") {
        alert("비밀번호를 입력해주세요!");
        newMem.pwd.focus();
        return;
    }

    if (newMem.email.value === "") {
        alert("이메일을 입력해주세요!");
        newMem.email.focus();
        return;
    }

    if (newMem.address.value === "") {
        alert("주소를 입력해주세요!");
        newMem.address.focus();
        return;
    }

    newMem.submit(); // 입력한 값들을 모두 서버로 전송
}

function checkID() {
    var id = newMem.id.value;

    if (id == "") {
        alert("ID를 입력해 주세요!");
        newMem.id.focus();
        return;
    }

    window.open("checkID.jsp?id=" + id, "win", "width=250, height=145, scrollbars=no, resizable=no");
}
