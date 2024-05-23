<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
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
 
 	 String jsql3 = "SELECT O.memId, O.ordNo, O.ordDate, G.prdName, G.prdPrice, G.prdPrice2, P.ordQty " +
               "FROM orderinfo AS O " +
               "JOIN orderproduct AS P ON O.ordNo = P.ordNo " +
               "JOIN goods AS G ON P.prdNo = G.prdNo";                      // 완제품 주문
  	 PreparedStatement pstmt3 = con.prepareStatement(jsql3);
	 ResultSet rs3 = pstmt3.executeQuery();

	String jsql4 = "SELECT oi. memId, oi.ordNo, oi.ordDate, oc.csName, oc.ordQty " +
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

	 String jsql11 = "select * from goods";     // 상품
	 PreparedStatement pstmt11 = con.prepareStatement(jsql11);
	 ResultSet rs11 = pstmt11.executeQuery();

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

	<!-- 상품(완제품 캡슐) 관리 영역. -->
	<section class="goods" id="goods">
		<h2>상품 관리</h2>

		<h3>완제품 캡슐 상품 내역</h3>
		<table>
			<tr>
			    <th width="12%">상품번호</th>
				<th width="12%">상품 분류</th>
				<th width="20%">상품명</th>
				<th width="13%">로스팅 단계</th>
				<th width="13%">상품 가격</th>
				<th width="10%">상세 조회</th>
				<th width="10%">상품 삭제</th>
			</tr>
		<%
		while(rs11.next()){
			String Gprdno = rs11.getString("prdNo");   	
			String Gtype = rs11.getString("prdType");	
			String Gname = rs11.getString("prdName");	
			String Groast = rs11.getString("prdRoasting");
			String Gprice = rs11.getString("prdPrice");
%>
			<!-- 반복 시작. -->
			<tr>
			    <td><%= Gprdno%></td>
				<td><%= Gtype%></td>
				<td><span class="long"><%= Gname%></span></td>
				<td><%= Groast%></td>
				<td><%= Gprice%> 원</td>
				<td><a href="detailGoods.jsp?prdNo=<%=Gprdno%>">상세 조회</a></td>
				<td><a href="deleteGoods.jsp?prdNo=<%=Gprdno%>">삭제</a></td>
			</tr>
			<% } %>
			<!-- 반복 끝. -->
		</table>
	</section>

	<!-- 주문 내역 관리 영역. -->
	<section class="order" id="order">
		<h2>주문 내역 관리</h2>

		<!-- 커스텀 캡슐 영역. -->
		<h3>커스텀 캡슐 주문 내역</h3>
		<table>
			<tr>
			    <th width="7%">주문 고객</th>
			    <th width="7%">주문 번호</th>
				<th width="19%">주문 날짜</th>
				<th width="17">커스텀 이름</th>
				<th width="19%">커스텀 가격</th>
				<th width="12%">상품 수량</th>
				<th width="9%">상세 조회</th>
				<th width="9%">주문 삭제</th>
			</tr>
			<!-- 반복 시작. -->
			<%
		while(rs4.next()){
			String Cid = rs4.getString("memId");
			String Cnum = rs4.getString("ordNo");   	
			String Cdate = rs4.getString("ordDate");	
			String Cname = rs4.getString("csName");	
			String Cqty = rs4.getString("ordQty");
%>
			<tr> 
			    <td><%= Cid%></td>
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
			    <th width="7%">주문 고객</th>
			    <th width="7%">주문 번호</th>
				<th width="19%">주문 날짜</th>
				<th width="14%">상품명</th>
				<th width="14%">판매 가격</th>
				<th width="7%">상품 수량</th>
				<th width="14%">총 주문 금액</th>
				<th width="9%">상세 조회</th>
				<th width="9%">주문 삭제</th>
			</tr>
			<!-- 반복 시작. -->
			<%
		while(rs3.next()){
			String Oid = rs3.getString("memId");
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
			    <td><%= Oid%></td>
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

	<!-- 판매 및 매출 통계 영역. -->
	<section class="graph_n_chart" id="chart_wrap">
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
<%
String jsql9 = "SELECT DISTINCT cart.prdNo, goods.prdName, goods.prdType, COALESCE(t.duplicate_count, 0) AS duplicate_count, COALESCE(t.total_quantity, 0) AS total_quantity FROM cart LEFT JOIN goods ON cart.prdNo = goods.prdNo LEFT JOIN (SELECT prdNo, COUNT(*) AS duplicate_count, SUM(ctqty) AS total_quantity FROM cart GROUP BY prdNo) AS t ON cart.prdNo = t.prdNo ORDER BY total_quantity DESC;";
PreparedStatement pstmt9 = con.prepareStatement(jsql9);
ResultSet rs9 = pstmt9.executeQuery();
ArrayList<String> prdNameList = new ArrayList<>();
ArrayList<Integer> totalQuantityList = new ArrayList<>();
while (rs9.next()) {
    String prdName = rs9.getString("prdName");
    prdNameList.add(prdName);
    
    int totalQuantity = rs9.getInt("total_quantity");
    totalQuantityList.add(totalQuantity);
}
%>

let myCt1 = document.getElementById('myChart1');
let labels = [];
let datasets = [];

<%
for (int i = 0; i < 5; i++) {
    String prdName = prdNameList.get(i);
%>
    labels.push('<%= prdName %>');
    
<%
}
%>

let myChart1 = new Chart(myCt1, {
    type: 'bar',
    data: {
        labels: labels,
        datasets: [{
        		label: '판매량(개)',
				data: [
				<%
				for (int i = 0; i < 5; i++) {
				    int totalQuantity = totalQuantityList.get(i);
				%>
				   	<%=totalQuantity%>,
				<%
				}
				%>
				], // 각 카테고리에 대한 값
		
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
        scales: {
            y: {
                beginAtZero: true
            }
        },
    },
});

<%
String jsql10 = "SELECT goods.ctgType, COALESCE(COUNT(cart.prdNo), 0) AS ctgType_duplicate_count FROM goods LEFT JOIN cart ON goods.prdNo = cart.prdNo GROUP BY goods.ctgType ORDER BY ctgType_duplicate_count DESC;";
PreparedStatement pstmt10 = con.prepareStatement(jsql10);
ResultSet rs10 = pstmt10.executeQuery();

ArrayList<String> ctgList = new ArrayList<>();
ArrayList<Integer> ctgListCtn = new ArrayList<>();
while (rs10.next()) {
    String prdTypeList = rs10.getString("ctgType");
    ctgList.add(prdTypeList);
    
    int prdTypeListCnt = rs10.getInt("ctgType_duplicate_count");
    ctgListCtn.add(prdTypeListCnt);
}
%>
let ctgList = [];
let ctgListCtn2 = [];
<%
for (int i = 0; i < 5; i++) {
    String ctgTypeList = ctgList.get(i);
%>
    ctgList.push('<%= ctgTypeList %>');
<%
}
%>
	let myCt2 = document.getElementById('myChart2');

	let myChart2 = new Chart(myCt2, {
		type: 'doughnut',
		data: {
			labels: ctgList,
			datasets: [{
				data: [
				<%
				for (int i = 0; i < 5; i++) {
				    int ctgListCtnResult = ctgListCtn.get(i);
				%>
				   	<%=ctgListCtnResult%>,
				<%
				}
				%>
				], // 각 카테고리에 대한 값
		
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