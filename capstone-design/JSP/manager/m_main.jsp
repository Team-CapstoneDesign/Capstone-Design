<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<head>
	<meta charset="euc-kr">
	<title>������ ������</title>
   
	<link rel="stylesheet" href="../../css/manager.css">
</head>
<%
		String id = (String) session.getAttribute("mid");
	%>
<!-- ������ ������ ������ �ȿ� �� ����. �⺻���� �� ���� ����. -->

<body>
<% 
 	 String DB_URL="jdbc:mysql://localhost:3306/dozan"; 
     String DB_ID="multi";  
     String DB_PASSWORD="abcd"; 
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

     String jsql = "select * from member";      // ȸ��
	 PreparedStatement  pstmt = con.prepareStatement(jsql);
	 ResultSet rs = pstmt.executeQuery();

	 String jsql2 = "select * from board";     // ����
	 PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	 ResultSet rs2 = pstmt2.executeQuery();
 
 	 String jsql3 = "SELECT O.ordNo, O.ordDate, G.prdName, G.prdPrice, G.prdPrice2, P.ordQty " +
               "FROM orderinfo AS O " +
               "JOIN orderproduct AS P ON O.ordNo = P.ordNo " +
               "JOIN goods AS G ON P.prdNo = G.prdNo";                      // ����ǰ �ֹ�
  	 PreparedStatement pstmt3 = con.prepareStatement(jsql3);
	 ResultSet rs3 = pstmt3.executeQuery();

	String jsql4 = "SELECT oi.ordNo, oi.ordDate, oc.csName, oc.ordQty " +
               "FROM orderinfo oi " +
               "JOIN ordercustom oc ON oi.ordNo = oc.ordNo";    // Ŀ���� �ֹ�
	 PreparedStatement pstmt4 = con.prepareStatement(jsql4);
	 ResultSet rs4 = pstmt4.executeQuery();

	 String jsql5 = "SELECT COUNT(*) AS total_member FROM member";    // �� ȸ����
     PreparedStatement pstmt5 = con.prepareStatement(jsql5);
     ResultSet rs5 = pstmt5.executeQuery();
	 rs5.next();

	 String jsql6 = "SELECT COUNT(*) AS total_board FROM board";      // �� �����
     PreparedStatement pstmt6 = con.prepareStatement(jsql6);
     ResultSet rs6 = pstmt6.executeQuery();
	 rs6.next();

	 String jsql7 = "SELECT COUNT(*) AS total_product FROM orderproduct";      // �� ����ǰ �ֹ���
     PreparedStatement pstmt7 = con.prepareStatement(jsql7);
     ResultSet rs7 = pstmt7.executeQuery();
	 rs7.next();

	 String jsql8 = "SELECT COUNT(*) AS total_custom FROM ordercustom";      // �� Ŀ���� �ֹ�
     PreparedStatement pstmt8 = con.prepareStatement(jsql8);
     ResultSet rs8 = pstmt8.executeQuery();
	 rs8.next();

	 int totalMember = rs5.getInt("total_member");
	 int totalReview = rs6.getInt("total_board");
	 int totalproduct = rs7.getInt("total_product");
	 int totalcustom = rs8.getInt("total_custom");
	 int totalOrder = totalproduct + totalcustom ;
%>
	<!-- �� �� ���� ���� �ִ� ���� ����. -->
	<div class="total_board">
		<div class="board1">
			<h2>�� �ֹ� �� �� : <%= totalOrder%> ��</h2>
			<h3>����ǰ ĸ�� �ֹ� �� �� : <%= totalproduct%> ��</h3>
			<h3>Ŀ���� ĸ�� �ֹ� �� �� : <%= totalcustom%> ��</h3>
		</div>
		<div class="board2">
			<h2>ȸ�� �� : <%= totalMember%> ��</h2>
		</div>
		<div class="board3">
			<h2>���� �� : <%= totalReview%>  ��</h2>
		</div>
	</div>

	<!-- �ֹ� ���� ���� ����. -->
	<section class="order" id="order">
		<h2>�ֹ� ���� ����</h2>

		<!-- Ŀ���� ĸ�� ����. -->
		<h3>Ŀ���� ĸ�� �ֹ� ����</h3>
		<table>
			<tr>
			    <th width="7%">�ֹ� ��ȣ</th>
				<th width="20%">�ֹ� ��¥</th>
				<th width="18">Ŀ���� �̸�</th>
				<th width="22%">Ŀ���� ����</th>
				<th width="13%">��ǰ ����</th>
				<th width="10%">�� ��ȸ</th>
				<th width="10%">�ֹ� ����</th>
			</tr>
			<!-- �ݺ� ����. -->
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
				<td>11,900��</td>
				<td><%= Cqty%> ��</td>
				<td><a href="detailCustom.jsp?ordNo=<%=Cnum%>">�� ��ȸ</a></td>
				<td><a href="deleteCustom.jsp?ordNo=<%=Cnum%>">�ֹ� ����</a></td>
			</tr>
			<% } %>
			<!-- �ݺ� ��. -->
		</table>

		<!-- ����ǰ ĸ�� ����. -->
		<h3>����ǰ ĸ�� �ֹ� ����</h3>
		<table>
			<tr>
			    <th width="7%">�ֹ� ��ȣ</th>
				<th width="20%">�ֹ� ��¥</th>
				<th width="15%">��ǰ��</th>
				<th width="15%">�Ǹ� ����</th>
				<th width="8%">��ǰ ����</th>
				<th width="15%">�� �ֹ� �ݾ�</th>
				<th width="10%">�� ��ȸ</th>
				<th width="10%">�ֹ� ����</th>
			</tr>
			<!-- �ݺ� ����. -->
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
				<td><%= Pprice%> ��</td>
				<td><%= Oqty%> ��</td>
				<td><%= comTprice%> ��</td>
				<td><a href="detailOrder.jsp?ordNo=<%=Onum%>">�� ��ȸ</a></td>
				<td><a href="deleteOrder.jsp?ordNo=<%=Onum%>">�ֹ� ����</a></td>
			</tr>
			<% } %>
			<!-- �ݺ� ��. -->
		</table>
	</section>

	<!-- ȸ�� ���� ���� ����. -->
	<section class="member" id="member">
		<h2>ȸ�� ���� ����</h2>
   
		<table>
			<tr>
				<th width="10%">ȸ����</th>
				<th width="15%">�޴��� ��ȣ</th>
				<th width="20%">���̵�</th>
				<th width="31%">�̸���</th>
				<th width="10%">�� ��ȸ</th>
				<th width="7%">����</th>
				<th width="7%">����</th>
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
				<td><a href="detailUser.jsp?id=<%=did%>">�� ��ȸ</a></td>
				<td><a href="detailUser.jsp?id=<%=did%>">����</a></td>
				<td><a href="deleteMember.jsp?id=<%=did%>">����</a></td>
			</tr>
			<% } %>
		</table>
	</section>

	<!-- ���� ���� ����. -->
	<section class="review" id="review">
		<h2>���� ����</h2>
  
		<table>
			<tr>
				<th width="25%">�ۼ���</th>
				<th width="15%">ȸ����</th>
				<th width="40%">��������</th>
				<th width="10%">�� ��ȸ</th>
				<th width="10%">����</th>
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
				<td><a href="detailReview.jsp?idx=<%=Ridx%>">�� ��ȸ</a></td>
				<td><a href="deleteReview.jsp?idx=<%=Ridx%>">����</a></td>
			</tr>
			<% } %>	
		</table>
	</section>

	<section class="review" id="chart_wrap">
		<h2>�Ǹ� ���</h2>
		<div class="chart1">
			<h3>���� ����</h3>
			<canvas id="myChart1"></canvas>
			
		</div>
		<div class="chart2">
			<h3>�α� ī�װ�</h3>
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
			labels: ['���� ����ü�� ����', '���� ����ü�� ����', '���� Ǫ�� �� ����', '���� ��� ������', '���� �ñ״�ó ������'],
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
			labels: ["������ǰ", "�ñ״�ó", "��������", "����", "��ī����", "��������"],
			datasets: [{
				data: [500, 200, 100, 80, 60, 150], // �� ī�װ��� ���� ��
		
			}]
		},
		options: {
			responsive: true,
			plugins: {

				title: {
					display: true,
					text: 'ī�װ��� ��ǰ ���� ȸ��'
				}
			},
		},
	});


</script>

</html>