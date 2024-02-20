<%@ page contentType="text/html; charset=euc-kr" %>
<%
session.invalidate(); 
response.sendRedirect("index.html"); 
%>

<!-- 아직 의미는 없지만 일단 로그아웃 구현 --> 