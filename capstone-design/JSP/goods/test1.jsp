<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--custome.html���� �Է°��� ��ٱ��Ϸ� �ܾ���� JSP ���� ����� -->
<% 
	String value1 = request.getParameter("baseName");
	String value2 = request.getParameter("blendName");
%>

<h1>�ܾ���� �׽�Ʈ</h1>
<%= value1%>
<%= value2%>

</body>
</html>