<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link rel="stylesheet" href="../../css/searchIDnPW.css">

<title>비밀번호 찾기</title>

</head>

<script language="javascript" src="../dojan_js_package.js"></script>

<body onLoad="searchpwd_focus()">

<div class="wrap_search">
	
	<div class="searchLogo">
		<img src="../../images/logo.png" alt="">
	</div>
		
	<form name="searchpwd" method="post" action="searchPwdOK.jsp" target=_parent>
		
			<h2>비밀번호 찾기</h2>
			
			<div>
				<input type="text" name="id" placeholder="아이디를 입력해주세요">
			</div><br>
			<div>
				<input type="text" name="name" placeholder="이름을 입력해주세요">
			</div><br>
        	<div>
				<input type="text" name="tel1" id="tel1" placeholder="휴대폰" maxlength='3'>
				<input type="text" name="tel2" id="tel2" placeholder="번호를" maxlength='4'> 
				<input type="text" name="tel3" id="tel3" placeholder="입력해주세요" maxlength='4'>
			</div><br>
		  
			<div><input type="button" id="find_btn" value="내 비밀번호 찾기" onClick="search_pwd()"></div>
		
	</form>
</div>
             
</body>  
</html>