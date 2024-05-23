<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="euc-kr">
<title>������ ������</title> 

<link rel="stylesheet" href="../../css/manager.css">	
	
<%
						
			String DB_URL="jdbc:mysql://localhost:3306/dozan";  
			String DB_ID="multi";  
		    String DB_PASSWORD="abcd"; 
						 	 
			Class.forName("org.gjt.mm.mysql.Driver"); 
		    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

			String key = request.getParameter("ordNo");
			
			String jsql = "SELECT OI.memId, OI.ordNo, OI.ordDate, OP.prdNo, OP.ordCap, OP.ordQty, OI.ordZipno, OI.ordAddress, OI.ordAddrplus, OI.ordRec " +
              "FROM orderinfo AS OI " +
              "INNER JOIN orderproduct AS OP ON OI.ordNo = OP.ordNo " +
              "WHERE OI.ordNo = ?";
            PreparedStatement pstmt = con.prepareStatement(jsql);
			pstmt.setString(1, key);

            ResultSet rs = pstmt.executeQuery();	
			rs.next();

            String Oid = rs.getString("memId");
			String Odate = rs.getString("ordDate");
			String Oproduct = rs.getString("prdNo");  
			String Ocap =  rs.getString("ordCap");
			String Oqty = rs.getString("ordQty");
			String Ozip = rs.getString("ordZipno");  
			String Oaddress =  rs.getString("ordAddress");
			String Oaddrplus = rs.getString("ordAddrplus");
			String Orec = rs.getString("ordRec");  

			String OrecText = (Orec != null && Orec.equals("recycle")) ? "��û" : "�̽�û";

			String OcapText = "";
if (Ocap != null) {
    switch (Ocap) {
        case "nesOrigin":
            OcapText = "�׽������� ��������";
            break;
        case "nesVeryuo":
            OcapText = "�׽������� �����";
            break;
        case "dolce":
            OcapText = "��ü������";
            break;
        case "illy":
            OcapText = "�ϸ�";
            break;
        case "kanu":
            OcapText = "ī��";
            break;
        case "keurig":
            OcapText = "ť����";
            break;
        default:
            OcapText = Ocap; // �⺻�����δ� ���� �� �״�� ���
            break;
    }
}

			%>
</head>

<body>
		<section class="order" id="order">
			<h2>�ֹ� ���� ����</h2>
			
			<h3>Ŀ���� ĸ�� �ֹ� ���� �� ��ȸ</h3>
			<table>
				<tr>
					<th width="13%">�ֹ� ��¥</th>
					<td><%= Odate%></td>
				</tr>
				<tr>
					<th>�ֹ� ��</th>
					<td><%= Oid%></td>
				</tr>
				<tr>
					<th>�ֹ� ��ǰ ��ȣ</th>
					<td><%= Oproduct%></td>
				</tr>
				<tr>
					<th>�ֹ� ĸ��</th>
					<td><%= OcapText%></td>
				</tr>
				<tr>
					<th>�ֹ� ����</th>
					<td><%= Oqty%> ��Ʈ</td>
				</tr>
				<tr>
					<th>��� �ּ�</th>
					<td>(<%= Ozip%>) <%= Oaddress%> <%= Oaddrplus%></td>
				</tr>
				<tr>
					<th>��Ȱ�� ����</th>
					<td><%= OrecText%></td>
				</tr>
			</table>
			<a href="m_main.jsp"><div class="btn_back">�ڷΰ���</div></a>
			<a href="deleteOrder.jsp?ordNo=<%=key%>"><div class="btn_delete">�ֹ� ����</div></a>
			
		</section>
</body>
</html>
