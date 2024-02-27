<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--custome.html에서 입력값을 장바구니로 긁어오는 JSP 예제 참고용 -->
<% 
	String value1 = request.getParameter("baseName");
	String value2 = request.getParameter("blendName");
%>

<h1>긁어오기 테스트</h1>
<%= value1%>
<%= value2%>

</body>
</html>