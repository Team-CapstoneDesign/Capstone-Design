<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="euc-kr">
<title>관리자 페이지</title> 

<link rel="stylesheet" href="../../css/manager.css">	
	
<!-- 관리자 페이지 프레임 안에 들어갈 내용. 리뷰 관리 상세 조회. -->
</head>

<body>
 <%
						
			String DB_URL="jdbc:mysql://localhost:3306/dozan";  
			String DB_ID="multi";  
		    String DB_PASSWORD="abcd"; 
						 	 
			Class.forName("org.gjt.mm.mysql.Driver"); 
		    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
						
			String key = request.getParameter("idx"); 
			String jsql = "select * from board where idx = ?";   
			PreparedStatement  pstmt  = con.prepareStatement(jsql);
			pstmt.setString(1, key);
						
			ResultSet rs = pstmt.executeQuery();  	
			rs.next();

			String Rdate = rs.getString("ymd");
			String Rname = rs.getString("name");  
			String Rbase =  rs.getString("base");
			String Rblend = rs.getString("blend");
			String Rroast = rs.getString("roasting");  
			String Rsubject =  rs.getString("subject");
			String Rcontent =  rs.getString("content");

%>
		<section class="review" id="review">
			<h2>리뷰 관리</h2>
			<h3>리뷰 관리 상세 조회</h3>
			<table>
				<tr>
					<th width="13%">작성일</th>
					<td><%= Rdate%></td>
				</tr>
				<tr>
					<th>회원명</th>
					<td><%= Rname%></td>
				</tr>
				<tr>
					<th>베이스 원두</th>
					<td><%= Rbase%></td>
				</tr>
				<tr>
					<th>블렌드 원두</th>
					<td><%= Rblend%></td>
				</tr>
				<tr>
					<th>로스팅 단계</th>
					<td><%= Rroast%> 단계</td>
				</tr>
				<tr>
					<th>리뷰 제목</th>
					<td><%= Rsubject%></td>
				</tr>
				<tr>
					<th>리뷰 내용</th>
					<td><%= Rcontent%></td>
				</tr>
			</table>
			<a href="m_main.jsp"><div class="btn_back">뒤로가기</div></a>
			<a href="deleteReview.jsp?idx=<%=key%>"><div class="btn_delete">리뷰 삭제</div></a>
			
		</section>
</body>
</html>
