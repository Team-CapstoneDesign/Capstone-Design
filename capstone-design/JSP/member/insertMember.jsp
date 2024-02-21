<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>두잔 회원가입</title>

<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/insertMember.css">

<script language="javascript" src="../dojan_js_package.js">
</script>

</head>
<body>

<form name="newMem" method="post" action="insertMemberResult.jsp">
    <div class="insertNewMem">
		
		<div class="insertMemLogo">
			<img src="../../images/logo_dark.png" alt="">
		</div>
		
		<h2>회원가입</h2>
		
		<ul>
			<li><input type="text" autofocus="autofocus" name="name" id="name" placeholder="이름을 입력해주세요"></li>

			<li><input type="text" name="birth" id="birth" placeholder="생년월일 앞 8자리를 입력해주세요" maxlength='8'></li>

			<li><input type="text" name="tel1" id="tel1" placeholder="휴대폰" maxlength='3'>
				<input type="text" name="tel2" id="tel2" placeholder="번호를" maxlength='4'> 
				<input type="text" name="tel3" id="tel3" placeholder="입력해주세요" maxlength='4'></li>
			<br>
			<li>
				<input type="text" name="id" id="id" placeholder="아이디를 입력해주세요">
				<a href="javascript:checkID()"><input type="button" id="idCheckBtn" value="중복확인"></a>
			</li>

			<li><input type="password" name="pwd" id="pwd" placeholder="패스워드를 입력해주세요"></li>
			<br>
			<li><input type="text" name="email" id="email" placeholder="이메일을 입력해주세요"></li>
			<br>
			<li><input type="text" name="zipNo" id="zipNo" placeholder="우편번호를 입력해주세요" readonly="">
				<button type="button" onclick="DaumPostcode();">우편번호 찾기</button></li>
			<li><input type="text" name="address" id="address" placeholder="기본주소를 입력해주세요"></li>
			<li><input type="text" name="addrplus" id="addrplus" placeholder="주소 참고항목을 입력해주세요"></li>
			<li><input type="text" name="addressdetail" id="addressdetail" placeholder="상세주소를 입력해주세요"></li>
			<br>
			<li><input type="button" value="회원가입 하기" id="makeMemID" onClick="checkValue()"></li>
		</ul>
    </div>

	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			<script>
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

			</script>
</form>
</body>
</html>