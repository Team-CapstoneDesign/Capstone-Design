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

    if (newMem.addressdetail.value === "") {
        alert("���ּҸ� �Է����ּ���!");
        newMem.addressdetail.focus();
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


///////////////// �����ȣ ã�� ////////////////////

function DaumPostcode() {
	new daum.Postcode({
		oncomplete: function(data) {
							
			var addr = ''; // �ּ� ����
			var extraAddr = ''; // �����׸� ����

			//����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
			if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
				addr = data.roadAddress;
			} 
			else {                               // ����ڰ� ���� �ּҸ� �������� ���
				addr = data.jibunAddress;
			}
							
			// ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����׸��� �����Ѵ�.
			if(data.userSelectedType === 'R'){
				// ���������� ���� ��� �߰��Ѵ�. (�������� ����)
				// �������� ��� ������ ���ڰ� "��/��/��"�� ������.
				if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
					extraAddr += data.bname;
				}
				// �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
				if(data.buildingName !== '' && data.apartment === 'Y'){
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				}
				// ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
				if(extraAddr !== ''){
					extraAddr = ' (' + extraAddr + ')';
				}
				// ���յ� �����׸��� �ش� �ʵ忡 �ִ´�.
				document.getElementById("addrplus").value = extraAddr;

			} else {
				document.getElementById("addrplus").value = '';
			}

			// �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
			document.getElementById('zipNo').value = data.zonecode;
			document.getElementById("address").value = addr;
			// Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
			document.getElementById("addressdetail").focus();
							
			}
		}).open();
	}

/////////// login.jsp ////////////////


function login_check()      
{
if(document.login.id.value=="")
{
    alert("���̵� �Է��� �ּ���");
    document.login.id.focus();
    return;	
  }

  if(document.login.pwd.value=="")
{
    alert("��й�ȣ�� �Է��� �ּ���");
    document.login.pwd.focus();			
    return;
  }
  
  document.login.submit();
}

///////// loginOK.jsp //////////

function noPwd() {
    alert("��й�ȣ�� �߸� �Է��ϼ̽��ϴ�");
    window.location.href = 'login.jsp';
    return;
}

function noID() {
    alert("�������� �ʴ� ID�Դϴ�");
    window.location.href = 'login.jsp';
    return;
}


/////////////// searchID.jsp ////////////

function search_id()   // ���̵� ã�� ���Է½� ã�ư�
{
	if(document.searchid.name.value=="")
	{
    	alert("�̸��� �Է��� �ּ���.");
    	document.searchid.name.focus();
    	return;	
    }

    if(document.searchid.tel1.value=="")
	{
    	alert("��ȭ��ȣ ���ڸ� �ּ���.");
    	document.searchid.tel1.focus();			
    	return;
    }

	  if(document.searchid.tel2.value=="")
	{
    	alert("��ȭ��ȣ �߰��ڸ� �ּ���.");
    	document.searchid.tel2.focus();			
    	return;
    }

	  if(document.searchid.tel3.value=="")
	{
    	alert("��ȭ��ȣ ���ڸ� �ּ���.");
    	document.searchid.tel3.focus();			
    	return;
    }
		
    document.searchid.submit();
}

function searchid_focus()    // �̸� �Է�â�� ã�ư�
{
   	document.searchid.name.focus();
   	return;
}


//////  searchPWD.jsp ////////

function search_pwd()   // ��й�ȣ ã�� ���Է½� ã�ư�
{
	if(document.searchpwd.id.value=="")
	{
    	alert("���̵� �Է��� �ּ���.");
    	document.searchpwd.id.focus();
    	return;	
    }

	if(document.searchpwd.name.value=="")
	{
    	alert("�̸��� �Է��� �ּ���.");
    	document.searchpwd.name.focus();
    	return;	
    }

    if(document.searchpwd.tel1.value=="")
	{
    	alert("��ȭ��ȣ ���ڸ� �ּ���.");
    	document.searchpwd.tel1.focus();			
    	return;
    }

	  if(document.searchpwd.tel2.value=="")
	{
    	alert("��ȭ��ȣ �߰��ڸ� �ּ���.");
    	document.searchpwd.tel2.focus();			
    	return;
    }

	  if(document.searchpwd.tel3.value=="")
	{
    	alert("��ȭ��ȣ ���ڸ� �ּ���.");
    	document.searchpwd.tel3.focus();			
    	return;
    }
		
    document.searchpwd.submit();
}

function searchpwd_focus()   
{
   	document.searchpwd.id.focus();
   	return;
}


//////// order1.jsp //////////


function submitForm() {
        document.orderInfo.submit(); 
    }

//////// order2.jsp ////////

function orderOK() {
        document.everyCartInfo.submit(); 
    }

////////  ���� /////////////

 function reviewOK() {
        document.rwWrite.submit();
    }