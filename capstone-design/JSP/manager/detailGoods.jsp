<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="euc-kr">
<title>������ ������</title> 

<script>
 function modify_check()
	 {
 			document.goodsModify.submit();
	}
</script>

<link rel="stylesheet" href="../../css/manager.css">	
</head>



<%
						
			String DB_URL="jdbc:mysql://localhost:3306/dozan";  
			String DB_ID="multi";  
		    String DB_PASSWORD="abcd"; 
						 	 
			Class.forName("org.gjt.mm.mysql.Driver"); 
		    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
						
			String key = request.getParameter("prdNo"); 
			String jsql = "select * from goods where prdNo = ?";   
			PreparedStatement  pstmt  = con.prepareStatement(jsql);
			pstmt.setString(1, key);
						
			ResultSet rs = pstmt.executeQuery();  	
			rs.next();

			String type = rs.getString("prdType");  
			String name =  rs.getString("prdName");
			String roast = rs.getString("prdRoasting");
			String price = rs.getString("prdPrice");  
			String smell =  rs.getString("prdSmell");
			String taste = rs.getString("prdTaste");
			String detail = rs.getString("prdDetail");  
			


			%>
<body>
		<section class="goods" id="goods">
			<h2>��ǰ ����</h2>
			<h3>����ǰ ĸ�� ��ǰ ���� �� ��ȸ</h3>

			<form name="goodsModify" method="post" action="updateGoodsResult.jsp">

			<table>
				<tr>
					<th width="13%">��ǰ��ȣ</th>
					<td><input type="text" name="no" id="no" value="<%= key%>"></td>
				</tr>
				<tr>
					<th>��ǰ �̹���</th>
					<td><img src="../../images/capdesign/<%= key%>.png" onclick="window.open(this.src)"></td>
				</tr>
				<tr>
					<th>��ǰ �з�</th>
					<td><input type="text" name="type" id="type" value="<%=type%>"></td>
				</tr>
				<tr>
					<th>��ǰ��</th>
					<td><input type="text" name="name" id="name" value="<%=name%>"></td>
				</tr>
				<tr>
					<th>�ν��� �ܰ�</th>
					<td><input type="text" name="roasting" id="roasting" value="<%= roast%>"></td>
				</tr>
				<tr>
					<th>��ǰ ����</th>
					<td><input type="text" name="price" id="price" value="<%= price%> ��"></td>
				</tr>
				<tr>
					<th>��</th>
					<td><input type="text" name="smell" id="smell" value="<%= smell%>"></td>
				</tr>
				<tr>
					<th>��</th>
					<td><input type="text" name="taste" id="taste" value="<%= taste%>"></td>
				</tr>
				<tr>
					<th>�� ����</th>
					<td><textarea name="detail" id="detail"><%= detail%></textarea></td>
				</tr>
			</table>
			<a href="m_main.jsp"><div class="btn_back">�ڷΰ���</div></a>
			<a href="#" onclick="modify_check();"><div class="btn_modify">���� ���� �Ϸ�</div></a>

			</form>
			
		</section>
</body>
</html>
