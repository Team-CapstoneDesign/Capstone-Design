<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>

<html>
	<head>	
	<%

        String id = (String) session.getAttribute("sid");
    %>
	<script src = " https://unpkg.com/sweetalert/dist/sweetalert.min.js " > </script> 
	</head>
	<body>

<%
	 request.setCharacterEncoding("euc-kr");

 	 String name = request.getParameter("name");
	 String	birth = request.getParameter("birth");
	 String	phone = request.getParameter("phone");
     String	email = request.getParameter("email");
	 String	pwd = request.getParameter("pwd");
	
 	 String DB_URL="jdbc:mysql://localhost:3306/dozan";
     String DB_ID="multi";  
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "update member set memName=?, memBirth=?, memTel=?, memEmail=?, memPwd=? where memId=? ";	
	 PreparedStatement pstmt = con.prepareStatement(jsql);
	 pstmt.setString(1,name);
	 pstmt.setString(2,birth);
	 pstmt.setString(3,phone);
	 pstmt.setString(4,email);
	 pstmt.setString(5,pwd);
	 pstmt.setString(6,id);

	 pstmt.executeUpdate();  


	 %>

	<script>
    swal("수정이 완료됐습니다!")
    .then((value) => {
        window.location.href = "mypage.jsp";
    });
</script>
</body>
</html>
	