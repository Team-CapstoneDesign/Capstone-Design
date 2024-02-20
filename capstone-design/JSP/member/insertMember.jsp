<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>회원가입</title>

<script language="javascript" src="../dojan_js_package.js">
</script>

</head>
<body>

<form name="newMem" method="post" action="insertMemberResult.jsp">
    <div class="contents">
        <div><input type="text" autofocus="autofocus" name="name" id="name" placeholder="  이름"></div><br>
        
        <div><input type="text" name="birth" id="birth" placeholder="   생년월일 앞 8자리"></div><br>
        
        <div><input type="text" name="tel1" id="tel1" placeholder=" 전화번호 앞자리"></div>
		<div><input type="text" name="tel2" id="tel2" placeholder=" 전화번호 중간"></div> 
		<div><input type="text" name="tel3" id="tel3" placeholder=" 전화번호 마지막"></div><br>  <!-- placeholder는 css하면서 알맞게 수정 -->
          
        <div>
            <input type="text" name="id" id="id" placeholder="   아이디">
            <a href="javascript:checkID()"><input type="button" value="중복확인"></a>
        </div><br>
        
        <div><input type="password" name="pwd" id="pwd" placeholder="   패스워드"></div><br>
        
        <div><input type="text" name="email" id="email" placeholder="   이메일"></div><br>
        
        <div>
            <input type="text" name="zipNo" id="zipNo" placeholder="   우편번호" readonly="">
            <button type="button" onclick="DaumPostcode();">우편번호 찾기</button><br>
            <input type="text" name="address" id="address" placeholder="   기본주소"><br>
            <input type="text" name="addressdetail" id="addressdetail" placeholder="   상세주소"><input type="text" name="addrplus" id="addrplus" placeholder="   참고 항목">
        </div><br>
        
        <div><input type="button" value="가입하기" onClick="checkValue()"></div>
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

							document.getElementById('zipNo').value = data.zonecode;
							document.getElementById("address").value = addr;
							document.getElementById("addressdetail").focus();
						}
					}).open();
				}

			</script>
</form>
</body>
</html>