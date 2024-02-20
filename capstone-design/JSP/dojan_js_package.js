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



///////////  dojan_login.jsp ////////////////


function login_check()      
{
if(document.login.id.value=="")
{
    alert("아이디를 입력해 주세요");
    document.login.id.focus();
    return;	
  }

  if(document.login.pwd.value=="")
{
    alert("비밀번호를 입력해 주세요");
    document.login.pwd.focus();			
    return;
  }
  
  document.login.submit();
}

///////// loginOK.jsp //////////

function noPwd() {
    alert("비밀번호를 잘못 입력하셨습니다");
    window.location.href = 'dojan_login.jsp';
    return;
}

function noID() {
    alert("존재하지 않는 ID입니다");
    window.location.href = 'dojan_login.jsp';
    return;
}


/////////////// searchID.jsp ////////////

function search_id()   // 아이디 찾기 미입력시 찾아감
{
	if(document.searchid.name.value=="")
	{
    	alert("이름을 입력해 주세요.");
    	document.searchid.name.focus();
    	return;	
    }

    if(document.searchid.tel1.value=="")
	{
    	alert("전화번호 앞자리 주세요.");
    	document.searchid.tel1.focus();			
    	return;
    }

	  if(document.searchid.tel2.value=="")
	{
    	alert("전화번호 중간자리 주세요.");
    	document.searchid.tel2.focus();			
    	return;
    }

	  if(document.searchid.tel3.value=="")
	{
    	alert("전화번호 뒷자리 주세요.");
    	document.searchid.tel3.focus();			
    	return;
    }
		
    document.searchid.submit();
}

function searchid_focus()    // 이름 입력창에 찾아감
{
   	document.searchid.name.focus();
   	return;
}


//////  searchPWD.jsp ////////

function search_pwd()   // 비밀번호 찾기 미입력시 찾아감
{
	if(document.searchpwd.id.value=="")
	{
    	alert("아이디를 입력해 주세요.");
    	document.searchpwd.id.focus();
    	return;	
    }

	if(document.searchpwd.name.value=="")
	{
    	alert("이름을 입력해 주세요.");
    	document.searchpwd.name.focus();
    	return;	
    }

    if(document.searchpwd.tel1.value=="")
	{
    	alert("전화번호 앞자리 주세요.");
    	document.searchpwd.tel1.focus();			
    	return;
    }

	  if(document.searchpwd.tel2.value=="")
	{
    	alert("전화번호 중간자리 주세요.");
    	document.searchpwd.tel2.focus();			
    	return;
    }

	  if(document.searchpwd.tel3.value=="")
	{
    	alert("전화번호 뒷자리 주세요.");
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