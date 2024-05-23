<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="euc-kr">
<title>������ ������</title> 
<script>
 function modify_check()
	 {
 			document.modify.submit();
	}
</script>
<link rel="stylesheet" href="../../css/manager.css">
	
<script language="javascript" src="../dozan_js_package.js"></script>
	
</head>
         <%
						
			String DB_URL="jdbc:mysql://localhost:3306/dozan";  
			String DB_ID="multi";  
		    String DB_PASSWORD="abcd"; 
						 	 
			Class.forName("org.gjt.mm.mysql.Driver"); 
		    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
						
			String key = request.getParameter("id"); 
			String jsql = "select * from member where memId = ?";   
			PreparedStatement  pstmt  = con.prepareStatement(jsql);
			pstmt.setString(1, key);
						
			ResultSet rs = pstmt.executeQuery();  	
			rs.next();

            String date = rs.getString("Date");
			String name = rs.getString("memName");
			String birth = rs.getString("memBirth");  
			String tel =  rs.getString("memTel");	
			String[ ]  telArr = tel.split("-");
			String id = rs.getString("memId");
			String pwd = rs.getString("memPwd");
			String email =  rs.getString("memEmail");
			String zip =  rs.getString("memZipno");
			String addr =  rs.getString("memAddress");
            String[ ]  addrArr = addr.split("  ");
			String addrPlus =  rs.getString("memAddrplus");


			String jsql2 = "SELECT o.ordNo, o.ordDate, g.prdName, g.prdPrice, g.prdPrice2, p.ordQty, p.prdNo " +
                        "FROM orderinfo o " +
                        "JOIN orderproduct p ON o.ordNo = p.ordNo " +
                        "JOIN goods g ON p.prdNo = g.prdNo " +
                        "WHERE o.memId = ?";
    
   
            PreparedStatement pstmt2 = con.prepareStatement(jsql2);
            pstmt2.setString(1, key);
    
            ResultSet rs2 = pstmt2.executeQuery();



			String jsql3 = "SELECT o.ordNo, o.ordDate, c.ordQty, c.csName " +
                   "FROM orderinfo o " +
                   "JOIN ordercustom c ON o.ordNo = c.ordNo " +
                   "WHERE o.memId = ?";

			PreparedStatement pstmt3 = con.prepareStatement(jsql3);
            pstmt3.setString(1, key);
    
            ResultSet rs3 = pstmt3.executeQuery();

			%>
<body>
		<section class="member" id="member">
			<h2>ȸ�� ���� ����</h2>
			<h3>ȸ�� ���� ���� ����</h3>
			
			<form name="modify" method="post" action="updateUserResult.jsp">
				
			<table>
			    <tr>
					<th width="13%">���Գ�¥</th>
					<td><input type="hidden" id="name" value="<%= date%>"><%= date%></td>
				</tr>
				<tr>
					<th width="13%">ȸ����</th>
					<td><input type="text" name="name" id="name" value="<%= name%>"></td>
				</tr>
				<tr>
					<th>�������</th>
					<td><input type="text" name="birth" id="birth" maxlength='8' value="<%= birth%>"></td>
				</tr>
				<tr>
					<th>�޴��� ��ȣ</th>
					<td><input type="text" name="tel1" id="tel1" maxlength='3' value="<%=telArr[0]%>">
						<input type="text" name="tel2" id="tel2" maxlength='4' value="<%=telArr[1]%>">
						<input type="text" name="tel3" id="tel3" maxlength='4' value="<%=telArr[2]%>"></td>
				</tr>
				<tr>
					<th>���̵�</th>
					<td><input type="hidden" name="id" id="id" value="<%= id%>"><%=id%></td>
				</tr>
				<tr>
					<th>�н�����</th>
					<td><input type="password" name="pwd" id="pwd" value="<%= pwd%>"></td>
				</tr>
				<tr>
					<th>�̸���</th>
					<td><input type="text" name="email" id="email" value="<%= email%>"></td>
				</tr>
				<tr>
					<th>�����ȣ</th>
					<td><input type="text" name="zipNo" id="zipNo" readonly value="<%= zip%>">
						<button type="button" onclick="DaumPostcode();">�����ȣ ã��</button></td>
				</tr>
				<tr>
					<th>�ּ�</th>
					<td><input type="text" name="address" id="address" value="<%=addrArr[0]%>"><br>
						<input type="text" name="addrplus" id="addrplus" value="<%=addrArr[1]%>"><br>
						<input type="text" name="addressdetail" id="addressdetail" value="<%= addrPlus%>"></td>
				</tr>
			</table>
			<a href="./m_main.jsp"><div class="btn_back">�ڷΰ���</div></a>
			<a href="#" onclick="modify_check();"><div class="btn_modify">���� ���� �Ϸ�</div></a>
				
			</form>
			
		</section>


		<section class="order" id="order">
		<h2>��ǰ �ֹ� ����</h2>

		<!-- Ŀ���� ĸ�� ����. -->
		<h3>Ŀ���� ĸ�� �ֹ� ����</h3>
		<table>
			<tr>
			    <th width="7%">�ֹ� ��ȣ</th>
				<th width="20%">�ֹ� ��¥</th>
				<th width="20%">Ŀ���� �̸�</th>
				<th width="20%">Ŀ���� ����</th>
				<th width="20%">��ǰ ����</th>
			</tr>
			<!-- �ݺ� ����. -->
			<%  
					while (rs3.next()) {
				    String cNum = rs3.getString("ordNo");
         			String cDate = rs3.getString("ordDate");
        			String cName = rs3.getString("csName");
					String cQty = rs3.getString("ordQty");

					%>
			<tr>
			    <td><%= cNum%></td>
				<td><%= cDate%></td>
				<td><%= cName%></td>
				<td>11,900��</td>
				<td><%= cQty%> ��</td>
			</tr>
			<!-- �ݺ� ��. -->
			<% } %>
		</table>

		<!-- ����ǰ ĸ�� ����. -->
		<h3>����ǰ ĸ�� �ֹ� ����</h3>
		<table>
			<tr>
			    <th width="6%">�ֹ� ��ȣ</th>
				<th width="20%">�ֹ� ��¥</th>
				<th width="15%">��ǰ��</th>
				<th width="15%">�Ǹ� ����</th>
				<th width="8%">��ǰ ����</th>
				<th width="15%">�� �ֹ� �ݾ�</th>
			</tr>
			<!-- �ݺ� ����. -->
			<%  
					while (rs2.next()) {
				    String oNum = rs2.getString("ordNo");
         			String oDate = rs2.getString("ordDate");
        			String oName = rs2.getString("prdName");
					String oPrice = rs2.getString("prdPrice");
        			int oPrice2 = rs2.getInt("prdPrice2");
        			int oQty = rs2.getInt("ordQty");
					
					int total = oPrice2 * oQty; 
					 
					String comtotal = String.format("%,d", total);
					
					%>
			<tr>
			    <td><%= oNum%></td>
				<td><%= oDate%></td>
				<td><span class="long"><%= oName%></span></td>
				<td><%= oPrice%> ��</td>
				<td><%= oQty%> ��</td>
				<td><%= comtotal%> ��</td>
			</tr>
			<!-- �ݺ� ��. -->
			<% }%>
		</table>
	</section>
	
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>
