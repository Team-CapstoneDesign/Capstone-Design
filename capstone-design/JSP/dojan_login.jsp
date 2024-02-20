<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>로그인</title>

<script language="javascript" src="dojan_js_package.js">
</script>

</head>

<body>
	
<div class="wrap_login">
 <form name="login" method="post" action="loginOK.jsp">
	<section class="container">
	
		<div class="contents">
			<div><input type="text" autofocus="autofocus" id="id" name="id" placeholder="  아이디" size="50"></div><br>
				
			<div><input type="password" id="pwd" name="pwd" size="50" placeholder="  패스워드" ></div><br>
				
			<div><a href="javascript:login_check()"><input type="button"  value="로그인" onClick=""></a></div><br>
				
			  <div><a href="insertMember.jsp"><input type="button" " value="회원가입"></a></div><br>
				
			<div><a href="searchID.jsp">아이디 찾기</a> | <a href="searchPWD.jsp">비밀번호 찾기</a></p></div>
		</div>
	</section>
</form>
</div>
</body>
</html>
