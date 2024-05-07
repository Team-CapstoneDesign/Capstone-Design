<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html><head><title>단일 장바구니 삭제</title></head>
<body>

<%
try { 

 	 String DB_URL="jdbc:mysql://localhost:3306/dozan";
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	String ctNo = session.getId(); 
	String prdNo = request.getParameter("prdNo");

	String jsql = "delete from cart where ctNo=? and prdNo = ?";   
	PreparedStatement pstmt = con.prepareStatement(jsql);
	pstmt.setString(1, ctNo);
	pstmt.setString(2, prdNo);
	
	pstmt.executeUpdate();
	response.sendRedirect("showcart.jsp");    
    } 

	catch (Exception e) {
    out.println(e);
}
%>
</body>
</html>