<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta charset="euc-kr">
<title>������ ������</title> 

<link rel="stylesheet" href="../../css/manager.css">	
</head>
<%
		String id = (String) session.getAttribute("mid");
	%>

<!-- ������ ������ ������ -->
	
<body>
	<div class="container">
		
	<!-- ���̵� �� -->
	<div class="sidebar">
		<div class="logo">
			<img src="../../images/logo.png">
		</div>
		<ul>
			<li><a href="./m_main.jsp#goods" target="display-frame">��ǰ ����</a></li>
			<li><a href="./m_main.jsp#order" target="display-frame">�ֹ� ���� ����</a></li>
			<li><a href="./m_main.jsp#member" target="display-frame">ȸ�� ���� ����</a></li>
			<li><a href="./m_main.jsp#review" target="display-frame">���� ����</a></li>
			<li><a href="./m_main.jsp#chart_wrap" target="display-frame">�Ǹ� ���</a></li>
		</ul>
		<div class="logout">
			<span><a href="../member/mainlogout.jsp">������ �α׾ƿ�</a></span>
		</div>
	</div>
	
	<!-- ������ -->
	<div class="main">
		<div class="title">
			<h1>������ ��, ȯ���մϴ�!</h1>
		</div>
		
	<!-- ���������� -->
		<iframe name="display-frame" src="m_main.jsp"></iframe>
	
	</div>
		
	</div>
</body>
</html>
