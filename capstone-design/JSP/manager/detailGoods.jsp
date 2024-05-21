<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="euc-kr">
<title>관리자 페이지</title> 

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
			<h2>상품 관리</h2>
			<h3>완제품 캡슐 상품 내역 상세 조회</h3>

			<form name="goodsModify" method="post" action="updateGoodsResult.jsp">

			<table>
				<tr>
					<th width="13%">상품번호</th>
					<td><input type="text" name="no" id="no" value="<%= key%>"></td>
				</tr>
				<tr>
					<th>상품 이미지</th>
					<td><img src="../../images/capdesign/<%= key%>.png" onclick="window.open(this.src)"></td>
				</tr>
				<tr>
					<th>상품 분류</th>
					<td><input type="text" name="type" id="type" value="<%=type%>"></td>
				</tr>
				<tr>
					<th>상품명</th>
					<td><input type="text" name="name" id="name" value="<%=name%>"></td>
				</tr>
				<tr>
					<th>로스팅 단계</th>
					<td><input type="text" name="roasting" id="roasting" value="<%= roast%>"></td>
				</tr>
				<tr>
					<th>상품 가격</th>
					<td><input type="text" name="price" id="price" value="<%= price%> 원"></td>
				</tr>
				<tr>
					<th>향</th>
					<td><input type="text" name="smell" id="smell" value="<%= smell%>"></td>
				</tr>
				<tr>
					<th>맛</th>
					<td><input type="text" name="taste" id="taste" value="<%= taste%>"></td>
				</tr>
				<tr>
					<th>상세 설명</th>
					<td><textarea name="detail" id="detail"><%= detail%></textarea></td>
				</tr>
			</table>
			<a href="m_main.jsp"><div class="btn_back">뒤로가기</div></a>
			<a href="#" onclick="modify_check();"><div class="btn_modify">정보 수정 완료</div></a>

			</form>
			
		</section>
</body>
</html>
