<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="euc-kr">
<title>������ ������</title> 

<link rel="stylesheet" href="../../css/manager.css">	
	
<!-- ������ ������ ������ �ȿ� �� ����. Ŀ���� ĸ�� �ֹ� ���� �� ��ȸ. -->
<%
						
			String DB_URL="jdbc:mysql://localhost:3306/dozan";  
			String DB_ID="multi";  
		    String DB_PASSWORD="abcd"; 
						 	 
			Class.forName("org.gjt.mm.mysql.Driver"); 
		    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

			String key = request.getParameter("ordNo");
			
			String jsql = "SELECT " + 
                "orderinfo.ordDate, " + 
				"orderinfo.ordZipno, " +
				"orderinfo.ordAddress, " +
				"orderinfo.ordAddrplus, " +
                "ordercustom.csName, " + 
                "ordercustom.ordOrigin, " + 
                "ordercustom.ordBlend, " + 
                "ordercustom.ordRoast, " + 
                "ordercustom.ordCap, " + 
                "ordercustom.ordQty " + 
            "FROM " + 
                "orderinfo " + 
            "JOIN " + 
                "ordercustom ON orderinfo.ordNo = ordercustom.ordNo " +
            "WHERE " +
                "orderinfo.ordNo = ?";
            PreparedStatement pstmt = con.prepareStatement(jsql);
			pstmt.setString(1, key);

            ResultSet rs = pstmt.executeQuery();	
			rs.next();

			String Cdate = rs.getString("ordDate");
			String Cname = rs.getString("csName");  
			String Corigin =  rs.getString("ordOrigin");
			String Cblend = rs.getString("ordBlend");
			String Croast = rs.getString("ordRoast");  
			String Ccap =  rs.getString("ordCap");
			String Cqty =  rs.getString("ordQty");
			String Czip = rs.getString("ordZipno");
			String Caddr = rs.getString("ordAddress");
			String Caddrplus = rs.getString("ordAddrplus");


			%>
</head>

<body>
		<section class="order" id="order">
			<h2>�ֹ� ���� ����</h2>
			
			<h3>Ŀ���� ĸ�� �ֹ� ���� �� ��ȸ</h3>
			<table>
				<tr>
					<th width="13%">�ֹ� ��¥</th>
					<td><%= Cdate%></td>
				</tr>
				<tr>
					<th>Ŀ���� �̸�</th>
					<td><%= Cname%></td>
				</tr>
				<tr>
					<th>���̽� ����</th>
					<td><%= Corigin%></td>
				</tr>
				<tr>
					<th>���� ����</th>
					<td><%= Cblend%></td>
				</tr>
				<tr>
					<th>�ν��� �ܰ�</th>
					<td><%= Croast%> �ܰ�</td>
				</tr>
				<tr>
					<th>Ŀ�� �ӽ�</th>
					<td><%= Ccap%></td>
				</tr>
				<tr>
					<th>��ǰ ����</th>
					<td><%= Cqty%> ��Ʈ</td>
				</tr>
				<tr>
					<th>��� �ּ�</th>
					<td>(<%= Czip%>) <%=Caddr%> <%=Caddrplus%></td>
				</tr>
			</table>
			<a href="m_main.jsp"><div class="btn_back">�ڷΰ���</div></a>
			<a href="deleteCustom.jsp?ordNo=<%=key%>"><div class="btn_delete">�ֹ� ����</div></a>
			
		</section>
</body>
</html>
