<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="euc-kr">
<title>������ ������</title> 

<link rel="stylesheet" href="../../css/manager.css">	
	
<!-- ������ ������ ������ �ȿ� �� ����. ���� ���� �� ��ȸ. -->
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
			<h2>���� ����</h2>
			<h3>���� ���� �� ��ȸ</h3>
			<table>
				<tr>
					<th width="13%">�ۼ���</th>
					<td><%= Rdate%></td>
				</tr>
				<tr>
					<th>ȸ����</th>
					<td><%= Rname%></td>
				</tr>
				<tr>
					<th>���̽� ����</th>
					<td><%= Rbase%></td>
				</tr>
				<tr>
					<th>���� ����</th>
					<td><%= Rblend%></td>
				</tr>
				<tr>
					<th>�ν��� �ܰ�</th>
					<td><%= Rroast%> �ܰ�</td>
				</tr>
				<tr>
					<th>���� ����</th>
					<td><%= Rsubject%></td>
				</tr>
				<tr>
					<th>���� ����</th>
					<td><%= Rcontent%></td>
				</tr>
			</table>
			<a href="m_main.jsp"><div class="btn_back">�ڷΰ���</div></a>
			<a href="deleteReview.jsp?idx=<%=key%>"><div class="btn_delete">���� ����</div></a>
			
		</section>
</body>
</html>
