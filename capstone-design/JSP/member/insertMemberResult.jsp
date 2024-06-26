<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link rel="stylesheet" href="../../css/insertMember.css">

<title>회원가입 확인</title>

</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");

	String name = request.getParameter("name");   
	String birth = request.getParameter("birth");
	String tel1 = request.getParameter("tel1");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	String tel = tel1 + "-" + tel2 + "-" + tel3 ;
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");   
	String email = request.getParameter("email");
	String zipno = request.getParameter("zipNo");
	String address1 = request.getParameter("address");
	String address2 = request.getParameter("addressdetail");
	String addr = address1 + "  " + address2 ;
	String addrplus = request.getParameter("addrplus");



 	 String DB_URL="jdbc:mysql://localhost:3306/dozan";  
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "INSERT INTO member (Date, memName, memBirth, memTel, memId, memPwd, memEmail, memZipno, memAddress, memAddrplus) VALUES (?,?,?,?,?,?,?,?,?,?)";	

	 java.util.Date date = new java.util.Date();   
    String oDate = date.toLocaleString(); 


	 PreparedStatement pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1,oDate);
	 pstmt.setString(2,name);
	 pstmt.setString(3,birth);
	 pstmt.setString(4,tel);
	 pstmt.setString(5,id);
	 pstmt.setString(6,pwd);
	 pstmt.setString(7,email);
     pstmt.setString(8,zipno);
     pstmt.setString(9,addr);
	 pstmt.setString(10,addrplus);



	 pstmt.executeUpdate();

%>
	
	<div class="insertMemResult">
		
	<div class="insertMemLogo">
		<img src="../../images/logo.png" width="100px" alt="">
	</div>
		
    <h2>정상적으로 가입이 완료되었습니다.</h2>
		
	<h3>내 회원 가입 정보</h3>

	<table>
	<tr>
		<th>이름</th>
		<td><%=name%></td>
	</tr>
	<tr>
		<th>생년월일</th>
		<td><%=birth%></td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td><%=tel%></td>
	</tr>
	<tr>
		<th>아이디</th>
		<td><%=id%></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><%=pwd%></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><%=email%></td>
	</tr>
	<tr>
		<th>우편번호</th>
		<td><%=zipno%></td>
	</tr>
	<tr>
		<th>주소</th>
		<td><%=addr%>&nbsp<%=addrplus%></td>
	</tr>

	</table>
	<br>

	<a href="login.jsp">
		<div class="go_login">로그인 화면으로 이동</div>
	</a>
		 
	</div>
		
</body>
</html>