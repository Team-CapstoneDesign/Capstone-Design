<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/login.css">
</head>
<body>
<form name="login" method="post" action="loginOK.jsp">
	<section class="login">
			<div class="loginLogo">
				<img src="../../images/logo_dark.png" alt="">
			</div>
			<h2>�α���</h2>
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
			<div>
				<ul>
					<li><a href="searchID.jsp">���̵�ã��</a></li>
					<li><a href="searchPWD.jsp">��й�ȣã��</a></li>
					<li><a href="insertMember.jsp">ȸ������</a></li>
				</ul>
			</div>
			<a href="">��ȸ�� �ֹ���ȸ</a>
		
	</section>
	<script src="../dojan_js_package.js"></script>
	
</body>
</html>