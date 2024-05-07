<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="euc-kr">
<title>관리자 페이지</title> 

<link rel="stylesheet" href="../../css/manager.css">	
	
<!-- 관리자 페이지 프레임 안에 들어갈 내용. 커스텀 캡슐 주문 내역 상세 조회. -->
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
			<h2>주문 내역 관리</h2>
			
			<h3>커스텀 캡슐 주문 내역 상세 조회</h3>
			<table>
				<tr>
					<th width="13%">주문 날짜</th>
					<td><%= Cdate%></td>
				</tr>
				<tr>
					<th>커스텀 이름</th>
					<td><%= Cname%></td>
				</tr>
				<tr>
					<th>베이스 원두</th>
					<td><%= Corigin%></td>
				</tr>
				<tr>
					<th>블렌드 원두</th>
					<td><%= Cblend%></td>
				</tr>
				<tr>
					<th>로스팅 단계</th>
					<td><%= Croast%> 단계</td>
				</tr>
				<tr>
					<th>커피 머신</th>
					<td><%= Ccap%></td>
				</tr>
				<tr>
					<th>상품 수량</th>
					<td><%= Cqty%> 세트</td>
				</tr>
				<tr>
					<th>배송 주소</th>
					<td>(<%= Czip%>) <%=Caddr%> <%=Caddrplus%></td>
				</tr>
			</table>
			<a href="m_main.jsp"><div class="btn_back">뒤로가기</div></a>
			<a href="deleteCustom.jsp?ordNo=<%=key%>"><div class="btn_delete">주문 삭제</div></a>
			
		</section>
</body>
</html>
