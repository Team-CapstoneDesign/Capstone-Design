function checkValue() {
    if (newMem.name.value === "") {
        alert("�̸��� �Է����ּ���!");
        newMem.name.focus();
        return;
    }

    if (newMem.birth.value === "") {
        alert("��������� �Է����ּ���!");
        newMem.birth.focus();
        return;
    }

    if (newMem.tel1.value === "" || newMem.tel2.value === "" || newMem.tel3.value === "") {
        alert("��ȭ��ȣ�� �Է����ּ���!");
        newMem.tel1.focus();
        return;
    }

    if (newMem.id.value === "") {
        alert("���̵� �Է����ּ���!");
        newMem.id.focus();
        return;
    }

    if (newMem.pwd.value === "") {
        alert("��й�ȣ�� �Է����ּ���!");
        newMem.pwd.focus();
        return;
    }

    if (newMem.email.value === "") {
        alert("�̸����� �Է����ּ���!");
        newMem.email.focus();
        return;
    }

    if (newMem.address.value === "") {
        alert("�ּҸ� �Է����ּ���!");
        newMem.address.focus();
        return;
    }

    newMem.submit(); // �Է��� ������ ��� ������ ����
}

function checkID() {
    var id = newMem.id.value;

    if (id == "") {
        alert("ID�� �Է��� �ּ���!");
        newMem.id.focus();
        return;
    }

    window.open("checkID.jsp?id=" + id, "win", "width=250, height=145, scrollbars=no, resizable=no");
}
