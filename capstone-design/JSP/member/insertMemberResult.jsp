<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link rel="stylesheet" href="../../css/style.css">
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



 	 String DB_URL="jdbc:mysql://localhost:3306/dojan";  
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver"); 
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	 String jsql = "INSERT INTO member (memName, memBirth, memTel, memId, memPwd, memEmail, memZipno, memAddress, memAddrplus) VALUES (?,?,?,?,?,?,?,?,?)";	

	 


	 PreparedStatement pstmt  = con.prepareStatement(jsql);
	 pstmt.setString(1,name);
	 pstmt.setString(2,birth);
	 pstmt.setString(3,tel);
	 pstmt.setString(4,id);
	 pstmt.setString(5,pwd);
	 pstmt.setString(6,email);
     pstmt.setString(7,zipno);
     pstmt.setString(8,addr);
	 pstmt.setString(9,addrplus);



	 pstmt.executeUpdate();

%>

    <h2> 정상적으로 가입이 완료되었습니다 </h2>
	<p>회원 가입 정보</p>

	<table>
	<tr>
		<td width=120>이름</td>
		<td width=200><%=name%></td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td><%=birth%></td>
	</tr>
	<tr>
		<td>전화번호</td>
		<td><%=tel%></td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><%=id%></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><%=pwd%></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><%=email%></td>
	</tr>
	<tr>
		<td>우편번호</td>
		<td><%=zipno%></td>
	</tr>
	<tr>
		<td>상세 주소</td>
		<td><%=addr%>&nbsp<%=addrplus%></td>
	</tr>


	</table>
<br>

 <a href="login.jsp">로그인화면으로 이동</a> 

</div>

</body>
</html>