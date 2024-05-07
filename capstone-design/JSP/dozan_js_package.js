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

    if (newMem.addressdetail.value === "") {
        alert("상세주소를 입력해주세요!");
        newMem.addressdetail.focus();
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


///////////////// 우편번호 찾기 ////////////////////

function DaumPostcode() {
	new daum.Postcode({
		oncomplete: function(data) {
							
			var addr = ''; // 주소 변수
			var extraAddr = ''; // 참고항목 변수

			//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
				addr = data.roadAddress;
			} 
			else {                               // 사용자가 지번 주소를 선택했을 경우
				addr = data.jibunAddress;
			}
							
			// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
			if(data.userSelectedType === 'R'){
				// 법정동명이 있을 경우 추가한다. (법정리는 제외)
				// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
					extraAddr += data.bname;
				}
				// 건물명이 있고, 공동주택일 경우 추가한다.
				if(data.buildingName !== '' && data.apartment === 'Y'){
					extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				}
				// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				if(extraAddr !== ''){
					extraAddr = ' (' + extraAddr + ')';
				}
				// 조합된 참고항목을 해당 필드에 넣는다.
				document.getElementById("addrplus").value = extraAddr;

			} else {
				document.getElementById("addrplus").value = '';
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			document.getElementById('zipNo').value = data.zonecode;
			document.getElementById("address").value = addr;
			// 커서를 상세주소 필드로 이동한다.
			document.getElementById("addressdetail").focus();
							
			}
		}).open();
	}

/////////// login.jsp ////////////////


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
    window.location.href = 'login.jsp';
    return;
}

function noID() {
    alert("존재하지 않는 ID입니다");
    window.location.href = 'login.jsp';
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


//////// order1.jsp //////////


function submitForm() {
        document.orderInfo.submit(); 
    }

//////// order2.jsp ////////

function orderOK() {
        document.everyCartInfo.submit(); 
    }

////////  리뷰 /////////////

 function reviewOK() {
        document.rwWrite.submit();
    }