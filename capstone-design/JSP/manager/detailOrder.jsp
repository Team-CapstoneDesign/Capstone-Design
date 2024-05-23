<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="euc-kr">
<title>관리자 페이지</title> 

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

			String OrecText = (Orec != null && Orec.equals("recycle")) ? "신청" : "미신청";

			String OcapText = "";
if (Ocap != null) {
    switch (Ocap) {
        case "nesOrigin":
            OcapText = "네스프레소 오리지널";
            break;
        case "nesVeryuo":
            OcapText = "네스프레소 버츄오";
            break;
        case "dolce":
            OcapText = "돌체구스토";
            break;
        case "illy":
            OcapText = "일리";
            break;
        case "kanu":
            OcapText = "카누";
            break;
        case "keurig":
            OcapText = "큐리그";
            break;
        default:
            OcapText = Ocap; // 기본적으로는 영어 값 그대로 출력
            break;
    }
}

			%>
</head>

<body>
		<section class="order" id="order">
			<h2>주문 내역 관리</h2>
			
			<h3>커스텀 캡슐 주문 내역 상세 조회</h3>
			<table>
				<tr>
					<th width="13%">주문 날짜</th>
					<td><%= Odate%></td>
				</tr>
				<tr>
					<th>주문 고객</th>
					<td><%= Oid%></td>
				</tr>
				<tr>
					<th>주문 상품 번호</th>
					<td><%= Oproduct%></td>
				</tr>
				<tr>
					<th>주문 캡슐</th>
					<td><%= OcapText%></td>
				</tr>
				<tr>
					<th>주문 수량</th>
					<td><%= Oqty%> 세트</td>
				</tr>
				<tr>
					<th>배송 주소</th>
					<td>(<%= Ozip%>) <%= Oaddress%> <%= Oaddrplus%></td>
				</tr>
				<tr>
					<th>재활용 여부</th>
					<td><%= OrecText%></td>
				</tr>
			</table>
			<a href="m_main.jsp"><div class="btn_back">뒤로가기</div></a>
			<a href="deleteOrder.jsp?ordNo=<%=key%>"><div class="btn_delete">주문 삭제</div></a>
			
		</section>
</body>
</html>
