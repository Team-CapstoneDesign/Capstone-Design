<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<%
	   request.setCharacterEncoding("euc-kr");

	   String name = request.getParameter("name");
	   String birth = request.getParameter("birth");
	   String tel1 = request.getParameter("tel1");
       String tel2 = request.getParameter("tel2");
       String tel3 = request.getParameter("tel3");
       String tel = tel1 + "-" + tel2 + "-" + tel3;
	   String id = request.getParameter("id");
	   String passwd = request.getParameter("pwd");
	   String email = request.getParameter("email");
	   String zip = request.getParameter("zipNo");
	   String addr1 = request.getParameter("address");
	   String addr2 = request.getParameter("addrplus");
	   String addr = addr1 + "  " + addr2;
	   String addrDetail = request.getParameter("addressdetail");



	   String DB_URL="jdbc:mysql://localhost:3306/dozan";
	   String DB_ID="multi";  
	   String DB_PASSWORD="abcd";
							 
	   Class.forName("org.gjt.mm.mysql.Driver");  
	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	   String jsql = "update member set memName=?, memBirth=?, memTel=?, memPwd=?, memEmail=?, memZipno=?, memAddress=?, memAddrplus=? where memId=? ";


		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setString(1,name);
		pstmt.setString(2,birth);
		pstmt.setString(3,tel);
		pstmt.setString(4,passwd);
		pstmt.setString(5,email);
		pstmt.setString(6,zip);
		pstmt.setString(7,addr);
		pstmt.setString(8,addrDetail);
		pstmt.setString(9,id);


		pstmt.executeUpdate();  
		
        response.sendRedirect("m_main.jsp");

		%>