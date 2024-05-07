<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>두잔 관리자 로그인</title>
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/login.css">
	<script src="../dojan_js_package.js"></script>
</head>
<body>
<form name="login" method="post" action="manager_loginOK.jsp">
	<section class="login">
			<div class="loginLogo">
				<img src="../../images/logo.png" alt="">
			</div>
			<h2>관리자 로그인</h2>
			<ul>
				<li><input type="text" placeholder="아이디" title="아이디입력" autofocus="autofocus" id="id" name="id"></li>
				<li><input type="password" placeholder="비밀번호" title="비밀번호입력" id="pwd" name="pwd"></li>
				<li><a href="javascript:login_check()" class="button" title="Learn more about web development">
						<svg height="60" width="410" xmlns="http://www.w3.org/2000/svg">
                        <rect class="shape" height="60" width="410" />
                        <div class="text">LOGIN</div>
                    </svg>
				</a></li>
			</ul>
		
	</section>
	
	
</body>
</html>