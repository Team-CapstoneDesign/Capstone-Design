<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<head>
	<meta charset="euc-kr">
	<title>관리자 페이지</title>
   
	<link rel="stylesheet" href="../../css/manager.css">
</head>
<%
		String id = (String) session.getAttribute("mid");
	%>
<!-- 관리자 페이지 프레임 안에 들어갈 내용. 기본으로 떠 있을 내용. -->

<body>
<% 
 	 String DB_URL="jdbc:mysql://localhost:3306/dozan"; 
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

     String jsql = "select * from member";      // 회원
	 PreparedStatement  pstmt = con.prepareStatement(jsql);
	 ResultSet rs = pstmt.executeQuery();

	 String jsql2 = "select * from board";     // 리뷰
	 PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	 ResultSet rs2 = pstmt2.executeQuery();
 
 	 String jsql3 = "SELECT O.ordNo, O.ordDate, G.prdName, G.prdPrice, G.prdPrice2, P.ordQty " +
               "FROM orderinfo AS O " +
               "JOIN orderproduct AS P ON O.ordNo = P.ordNo " +
               "JOIN goods AS G ON P.prdNo = G.prdNo";                      // 완제품 주문
  	 PreparedStatement pstmt3 = con.prepareStatement(jsql3);
	 ResultSet rs3 = pstmt3.executeQuery();

	String jsql4 = "SELECT oi.ordNo, oi.ordDate, oc.csName, oc.ordQty " +
               "FROM orderinfo oi " +
               "JOIN ordercustom oc ON oi.ordNo = oc.ordNo";    // 커스텀 주문
	 PreparedStatement pstmt4 = con.prepareStatement(jsql4);
	 ResultSet rs4 = pstmt4.executeQuery();

	 String jsql5 = "SELECT COUNT(*) AS total_member FROM member";    // 총 회원수
     PreparedStatement pstmt5 = con.prepareStatement(jsql5);
     ResultSet rs5 = pstmt5.executeQuery();
	 rs5.next();

	 String jsql6 = "SELECT COUNT(*) AS total_board FROM board";      // 총 리뷰수
     PreparedStatement pstmt6 = con.prepareStatement(jsql6);
     ResultSet rs6 = pstmt6.executeQuery();
	 rs6.next();

	 String jsql7 = "SELECT COUNT(*) AS total_product FROM orderproduct";      // 총 완제품 주문수
     PreparedStatement pstmt7 = con.prepareStatement(jsql7);
     ResultSet rs7 = pstmt7.executeQuery();
	 rs7.next();

	 String jsql8 = "SELECT COUNT(*) AS total_custom FROM ordercustom";      // 총 커스텀 주문
     PreparedStatement pstmt8 = con.prepareStatement(jsql8);
     ResultSet rs8 = pstmt8.executeQuery();
	 rs8.next();

	 int totalMember = rs5.getInt("total_member");
	 int totalReview = rs6.getInt("total_board");
	 int totalproduct = rs7.getInt("total_product");
	 int totalcustom = rs8.getInt("total_custom");
	 int totalOrder = totalproduct + totalcustom ;
%>
	<!-- 총 건 수가 적혀 있는 보드 영역. -->
	<div class="total_board">
		<div class="board1">
			<h2>총 주문 건 수 : <%= totalOrder%> 건</h2>
			<h3>완제품 캡슐 주문 건 수 : <%= totalproduct%> 건</h3>
			<h3>커스텀 캡슐 주문 건 수 : <%= totalcustom%> 건</h3>
		</div>
		<div class="board2">
			<h2>회원 수 : <%= totalMember%> 명</h2>
		</div>
		<div class="board3">
			<h2>리뷰 수 : <%= totalReview%>  개</h2>
		</div>
	</div>

	<!-- 주문 내역 관리 영역. -->
	<section class="order" id="order">
		<h2>주문 내역 관리</h2>

		<!-- 커스텀 캡슐 영역. -->
		<h3>커스텀 캡슐 주문 내역</h3>
		<table>
			<tr>
			    <th width="7%">주문 번호</th>
				<th width="20%">주문 날짜</th>
				<th width="18">커스텀 이름</th>
				<th width="22%">커스텀 가격</th>
				<th width="13%">상품 수량</th>
				<th width="10%">상세 조회</th>
				<th width="10%">주문 삭제</th>
			</tr>
			<!-- 반복 시작. -->
			<%
		while(rs4.next()){
			String Cnum = rs4.getString("ordNo");   	
			String Cdate = rs4.getString("ordDate");	
			String Cname = rs4.getString("csName");	
			String Cqty = rs4.getString("ordQty");
%>
			<tr>
			    <td><%= Cnum%></td>
				<td><%= Cdate%></td>
				<td><%= Cname%></td>
				<td>11,900원</td>
				<td><%= Cqty%> 개</td>
				<td><a href="detailCustom.jsp?ordNo=<%=Cnum%>">상세 조회</a></td>
				<td><a href="deleteCustom.jsp?ordNo=<%=Cnum%>">주문 삭제</a></td>
			</tr>
			<% } %>
			<!-- 반복 끝. -->
		</table>

		<!-- 완제품 캡슐 영역. -->
		<h3>완제품 캡슐 주문 내역</h3>
		<table>
			<tr>
			    <th width="7%">주문 번호</th>
				<th width="20%">주문 날짜</th>
				<th width="15%">상품명</th>
				<th width="15%">판매 가격</th>
				<th width="8%">상품 수량</th>
				<th width="15%">총 주문 금액</th>
				<th width="10%">상세 조회</th>
				<th width="10%">주문 삭제</th>
			</tr>
			<!-- 반복 시작. -->
			<%
		while(rs3.next()){
			String Onum = rs3.getString("ordNo");   	
			String Odate = rs3.getString("ordDate");
			String Pname = rs3.getString("prdName");   	
			String Pprice = rs3.getString("prdPrice");
			String Oqty = rs3.getString("ordQty");
			String Pprice2 = rs3.getString("prdPrice2");
			int Tprice = Integer.parseInt(Pprice2) * Integer.parseInt(Oqty);

			String comTprice = String.format("%,d", Tprice);
%>
			<tr>
			    <td><%= Onum%></td>
				<td><%= Odate%></td>
				<td><span class="long"><%= Pname%></span></td>
				<td><%= Pprice%> 원</td>
				<td><%= Oqty%> 개</td>
				<td><%= comTprice%> 원</td>
				<td><a href="detailOrder.jsp?ordNo=<%=Onum%>">상세 조회</a></td>
				<td><a href="deleteOrder.jsp?ordNo=<%=Onum%>">주문 삭제</a></td>
			</tr>
			<% } %>
			<!-- 반복 끝. -->
		</table>
	</section>

	<!-- 회원 정보 관리 영역. -->
	<section class="member" id="member">
		<h2>회원 정보 관리</h2>
   
		<table>
			<tr>
				<th width="10%">회원명</th>
				<th width="15%">휴대폰 번호</th>
				<th width="20%">아이디</th>
				<th width="31%">이메일</th>
				<th width="10%">상세 조회</th>
				<th width="7%">수정</th>
				<th width="7%">삭제</th>
			</tr>
			
<%
		while(rs.next()){
			String did = rs.getString("memId");   	
			String name = rs.getString("memName");	
			String tel = rs.getString("memTel");	
			String email = rs.getString("memEmail");
%>
			<tr>
				<td><%=name%></td>
				<td><%=tel%></td>
				<td><%=did%></td>
				<td><%=email%></td>
				<td><a href="detailUser.jsp?id=<%=did%>">상세 조회</a></td>
				<td><a href="detailUser.jsp?id=<%=did%>">수정</a></td>
				<td><a href="deleteMember.jsp?id=<%=did%>">삭제</a></td>
			</tr>
			<% } %>
		</table>
	</section>

	<!-- 리뷰 관리 영역. -->
	<section class="review" id="review">
		<h2>리뷰 관리</h2>
  
		<table>
			<tr>
				<th width="25%">작성일</th>
				<th width="15%">회원명</th>
				<th width="40%">리뷰제목</th>
				<th width="10%">상세 조회</th>
				<th width="10%">삭제</th>
			</tr>
			   <%
		while(rs2.next()){
			String Ridx = rs2.getString("idx");
			String Rdate = rs2.getString("ymd");   	
			String Rname = rs2.getString("name");	
			String Rsubject= rs2.getString("subject");	
%> 	
			<tr>
				<td><%= Rdate%></td>
				<td><%= Rname%></td>
				<td><span class="long2"><%= Rsubject%></span></td>
				<td><a href="detailReview.jsp?idx=<%=Ridx%>">상세 조회</a></td>
				<td><a href="deleteReview.jsp?idx=<%=Ridx%>">삭제</a></td>
			</tr>
			<% } %>	
		</table>
	</section>

	<section class="review" id="chart_wrap">
		<h2>판매 통계</h2>
		<div class="chart1">
			<h3>매출 순위</h3>
			<canvas id="myChart1"></canvas>
			
		</div>
		<div class="chart2">
			<h3>인기 카테고리</h3>
			<div class="chart2_group">
				<canvas id="myChart2"></canvas>
			</div>
		</div>
	</section>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.4.0/chart.umd.min.js"></script>
<script>
	let myCt1 = document.getElementById('myChart1');

	let myChart1 = new Chart(myCt1, {
		type: 'bar',
		data: {
			labels: ['두잔 예가체프 블렌딩', '두잔 예가체프 블렌딩', '두잔 푸른 용 가배', '두잔 모닝 오리진', '두잔 시그니처 오리진'],
			datasets: [
				{
					label: 'Dataset',
					data: [55, 10, 30, 40, 50],
				}
			]
		},
	});


	let myCt2 = document.getElementById('myChart2');

	let myChart2 = new Chart(myCt2, {
		type: 'doughnut',
		data: {
			labels: ["시즌제품", "시그니처", "오리지널", "블렌드", "디카페인", "베버리지"],
			datasets: [{
				data: [500, 200, 100, 80, 60, 150], // 각 카테고리에 대한 값
		
			}]
		},
		options: {
			responsive: true,
			plugins: {

				title: {
					display: true,
					text: '카테고리별 제품 구매 회수'
				}
			},
		},
	});


</script>

</html>