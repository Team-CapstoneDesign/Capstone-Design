<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html><head><title>단일 회원 삭제</title></head>
<body>

<%
try { 

 	 String DB_URL="jdbc:mysql://localhost:3306/dojan";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
 
	String key = request.getParameter("id");

	String jsql = "delete from member where memId=?";   
	PreparedStatement pstmt = con.prepareStatement(jsql);
	pstmt.setString(1, key);
	
	pstmt.executeUpdate();
	response.sendRedirect("m_main.jsp");    
    } 

	catch (Exception e) {
    out.println(e);
}
%>
</body>
</html>