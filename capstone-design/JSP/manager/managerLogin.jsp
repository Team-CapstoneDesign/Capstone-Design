<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ������ �α���</title>
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
			<h2>������ �α���</h2>
			<ul>
				<li><input type="text" placeholder="���̵�" title="���̵��Է�" autofocus="autofocus" id="id" name="id"></li>
				<li><input type="password" placeholder="��й�ȣ" title="��й�ȣ�Է�" id="pwd" name="pwd"></li>
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