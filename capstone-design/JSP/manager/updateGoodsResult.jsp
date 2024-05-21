<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%
	   request.setCharacterEncoding("euc-kr");

	   String no = request.getParameter("no");
	   String type = request.getParameter("type");
	   String name = request.getParameter("name");
	   String roast = request.getParameter("roasting");
	   String price = request.getParameter("price");
	   String smell = request.getParameter("smell");
	   String taste = request.getParameter("taste");
	   String detail = request.getParameter("detail");



	   String DB_URL="jdbc:mysql://localhost:3306/dozan";
	   String DB_ID="multi";  
	   String DB_PASSWORD="abcd";
							 
	   Class.forName("org.gjt.mm.mysql.Driver");  
	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	   String jsql = "update goods set prdType=?, prdName=?, prdRoasting=?, prdPrice=?, prdSmell=?, prdTaste=?, prdDetail=?  where prdNo=? ";


		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setString(1,type);
		pstmt.setString(2,name);
		pstmt.setString(3,roast);
		pstmt.setString(4,price);
		pstmt.setString(5,smell);
		pstmt.setString(6,taste);
		pstmt.setString(7,detail);
		pstmt.setString(8,no);


		pstmt.executeUpdate();  
		
        response.sendRedirect("m_main.jsp");

		%>