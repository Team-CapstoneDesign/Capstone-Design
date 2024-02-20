<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


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
		입력하신 정보와 일치하는 아이디는 <%= rs.getString("memId") %> 입니다.<br><br>
		<a href="dojan_login.jsp" >로그인 창으로 돌아가기</a>
	<%
		}
		else {
	%>
		입력하신 정보와 일치하는 아이디가 없습니다. <br>
		다시 입력해주세요.<br><br>
		<a href="dojan_login.jsp" >로그인 화면</a>
		<a href="searchId.jsp" >다른 정보로 찾기</a>
	<%
		}
		con.close();
	%>
	

</body>
</html>
