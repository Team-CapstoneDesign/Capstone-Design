<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title>로그인 결과</title>

</head>

<script src="../dozan_js_package.js"></script>
	
</script>

<body>

	<%
		String DB_URL = "jdbc:mysql://localhost:3306/dozan";
	String DB_ID = "multi";
	String DB_PASSWORD = "abcd";

	Class.forName("org.gjt.mm.mysql.Driver");
	Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	String jsql = "select  *  from manager where ID = ? ";
	PreparedStatement pstmt = con.prepareStatement(jsql);
	pstmt.setString(1, id);

	ResultSet rs = pstmt.executeQuery();

	if (rs.next()) {
		if (pwd.equals(rs.getString("password")))

		{
			session.setAttribute("mid", id);

			response.sendRedirect("m_mainFrame.jsp");

		} else {
	%>
	<script>
                alert("관리자 아이디 또는 비밀번호가 일치하지 않습니다.");
                location.reload(); // 페이지 새로고침
    </script>
	<%
		}
	}

	else {
	%>
	<script>
                alert("관리자 아이디 또는 비밀번호가 일치하지 않습니다.");
                location.reload(); // 페이지 새로고침
    </script>
	<%
		}
	%>

</body>
</html>

