<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta charset="euc-kr">
<title>관리자 페이지</title> 

<link rel="stylesheet" href="../../css/manager.css">	
</head>
<%
		String id = (String) session.getAttribute("mid");
	%>

<!-- 관리자 페이지 프레임 -->
	
<body>
	<div class="container">
		
	<!-- 사이드 바 -->
	<div class="sidebar">
		<div class="logo">
			<img src="../../images/logo.png">
		</div>
		<ul>
			<li><a href="./m_main.jsp#goods" target="display-frame">상품 관리</a></li>
			<li><a href="./m_main.jsp#order" target="display-frame">주문 내역 관리</a></li>
			<li><a href="./m_main.jsp#member" target="display-frame">회원 정보 관리</a></li>
			<li><a href="./m_main.jsp#review" target="display-frame">리뷰 관리</a></li>
			<li><a href="./m_main.jsp#chart_wrap" target="display-frame">판매 통계</a></li>
		</ul>
		<div class="logout">
			<span><a href="../member/mainlogout.jsp">관리자 로그아웃</a></span>
		</div>
	</div>
	
	<!-- 콘텐츠 -->
	<div class="main">
		<div class="title">
			<h1>관리자 님, 환영합니다!</h1>
		</div>
		
	<!-- 아이프레임 -->
		<iframe name="display-frame" src="m_main.jsp"></iframe>
	
	</div>
		
	</div>
</body>
</html>
