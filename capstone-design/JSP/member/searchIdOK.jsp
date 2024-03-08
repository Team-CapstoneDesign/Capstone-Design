<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link rel="stylesheet" href="../../css/searchIDnPW.css">

<title>아이디 찾기 결과</title>

</head>

<body>
<%
		request.setCharacterEncoding("euc-kr");

        String DB_URL = "jdbc:mysql://localhost:3306/dojan";
        String DB_ID = "multi";
        String DB_PASSWORD = "abcd";

        Class.forName("org.gjt.mm.mysql.Driver");
        Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

        String name = request.getParameter("name");
        String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String tel = tel1 + "-" + tel2 + "-" + tel3 ;

        String jsql = "SELECT * FROM member WHERE memName = ? and memTel = ? ";

        PreparedStatement pstmt = con.prepareStatement(jsql);
        pstmt.setString(1, name);
		pstmt.setString(2, tel);

        ResultSet rs = pstmt.executeQuery();

		if( rs.next() ) { 
	%>       
		
		<div class="wrap_search">
			
		<h2>아이디 찾기 결과</h2>
			
		<h3>입력하신 정보와 일치하는 아이디는<br><br>
			<%= rs.getString("memId") %> 입니다.</h3>
			
		<a href="login.jsp"><div class="go_login">로그인 화면으로 돌아가기</div></a>
			
		</div>
	<%
		}
		else {
	%>
		<div class="wrap_search">
		
		<h2>아이디 찾기 결과</h2>
		
		<h3>입력하신 정보와 일치하는 아이디가 없습니다.<br><br>
			다시 입력해주세요.</h3>
			
		<a href="login.jsp"><div class="go_login">로그인 화면으로 돌아가기</div></a>
		<a href="searchID.jsp"><div class="go_back">다시 아이디 찾기</div></a>
			
		</div>
	<%
		}
		con.close();
	%>
	

</body>
</html>
