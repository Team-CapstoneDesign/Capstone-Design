<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<title>��й�ȣ ã�� ���</title>

</head>
<body>
<%
		request.setCharacterEncoding("euc-kr");

        String DB_URL = "jdbc:mysql://localhost:3306/dojan";
        String DB_ID = "multi";
        String DB_PASSWORD = "abcd";

        Class.forName("org.gjt.mm.mysql.Driver");
        Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String tel = tel1 + "-" + tel2 + "-" + tel3 ;

        String jsql = "SELECT * FROM member WHERE memID = ? and memName = ? and memTel = ?";

        PreparedStatement pstmt = con.prepareStatement(jsql);
        pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, tel);

        ResultSet rs = pstmt.executeQuery();

		if( rs.next() ) { 
	%>       
		�Է��Ͻ� ������ ��ġ�ϴ� ��й�ȣ�� <%= rs.getString("memPwd") %> �Դϴ�.<br><br><br>
		<a href="dojan_login.jsp" >�α��� ȭ������ ���ư���</a>
	<%
		}
		else {
	%>
		 �Է��Ͻ� ������ ��ġ�ϴ� ��й�ȣ�� �����ϴ�. <br>
		 �ٽ� �Է����ּ���.<br><br>
		<a href="dojan_login.jsp" >�α��� ȭ��</a>
		<a href="searchPWD.jsp" >�ٽ� �Է��ϱ�</a>
	<%
		}
		con.close();
	%>

</body>
</html>