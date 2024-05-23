<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
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
 
 	 String jsql3 = "SELECT O.memId, O.ordNo, O.ordDate, G.prdName, G.prdPrice, G.prdPrice2, P.ordQty " +
               "FROM orderinfo AS O " +
               "JOIN orderproduct AS P ON O.ordNo = P.ordNo " +
               "JOIN goods AS G ON P.prdNo = G.prdNo";                      // ����ǰ �ֹ�
  	 PreparedStatement pstmt3 = con.prepareStatement(jsql3);
	 ResultSet rs3 = pstmt3.executeQuery();

	String jsql4 = "SELECT oi. memId, oi.ordNo, oi.ordDate, oc.csName, oc.ordQty " +
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

	 String jsql11 = "select * from goods";     // ��ǰ
	 PreparedStatement pstmt11 = con.prepareStatement(jsql11);
	 ResultSet rs11 = pstmt11.executeQuery();

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

	<!-- ��ǰ(����ǰ ĸ��) ���� ����. -->
	<section class="goods" id="goods">
		<h2>��ǰ ����</h2>

		<h3>����ǰ ĸ�� ��ǰ ����</h3>
		<table>
			<tr>
			    <th width="12%">��ǰ��ȣ</th>
				<th width="12%">��ǰ �з�</th>
				<th width="20%">��ǰ��</th>
				<th width="13%">�ν��� �ܰ�</th>
				<th width="13%">��ǰ ����</th>
				<th width="10%">�� ��ȸ</th>
				<th width="10%">��ǰ ����</th>
			</tr>
		<%
		while(rs11.next()){
			String Gprdno = rs11.getString("prdNo");   	
			String Gtype = rs11.getString("prdType");	
			String Gname = rs11.getString("prdName");	
			String Groast = rs11.getString("prdRoasting");
			String Gprice = rs11.getString("prdPrice");
%>
			<!-- �ݺ� ����. -->
			<tr>
			    <td><%= Gprdno%></td>
				<td><%= Gtype%></td>
				<td><span class="long"><%= Gname%></span></td>
				<td><%= Groast%></td>
				<td><%= Gprice%> ��</td>
				<td><a href="detailGoods.jsp?prdNo=<%=Gprdno%>">�� ��ȸ</a></td>
				<td><a href="deleteGoods.jsp?prdNo=<%=Gprdno%>">����</a></td>
			</tr>
			<% } %>
			<!-- �ݺ� ��. -->
		</table>
	</section>

	<!-- �ֹ� ���� ���� ����. -->
	<section class="order" id="order">
		<h2>�ֹ� ���� ����</h2>

		<!-- Ŀ���� ĸ�� ����. -->
		<h3>Ŀ���� ĸ�� �ֹ� ����</h3>
		<table>
			<tr>
			    <th width="7%">�ֹ� ��</th>
			    <th width="7%">�ֹ� ��ȣ</th>
				<th width="19%">�ֹ� ��¥</th>
				<th width="17">Ŀ���� �̸�</th>
				<th width="19%">Ŀ���� ����</th>
				<th width="12%">��ǰ ����</th>
				<th width="9%">�� ��ȸ</th>
				<th width="9%">�ֹ� ����</th>
			</tr>
			<!-- �ݺ� ����. -->
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
			    <th width="7%">�ֹ� ��</th>
			    <th width="7%">�ֹ� ��ȣ</th>
				<th width="19%">�ֹ� ��¥</th>
				<th width="14%">��ǰ��</th>
				<th width="14%">�Ǹ� ����</th>
				<th width="7%">��ǰ ����</th>
				<th width="14%">�� �ֹ� �ݾ�</th>
				<th width="9%">�� ��ȸ</th>
				<th width="9%">�ֹ� ����</th>
			</tr>
			<!-- �ݺ� ����. -->
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

	<!-- �Ǹ� �� ���� ��� ����. -->
	<section class="graph_n_chart" id="chart_wrap">
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
        		label: '�Ǹŷ�(��)',
				data: [
				<%
				for (int i = 0; i < 5; i++) {
				    int totalQuantity = totalQuantityList.get(i);
				%>
				   	<%=totalQuantity%>,
				<%
				}
				%>
				], // �� ī�װ��� ���� ��
		
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
				], // �� ī�װ��� ���� ��
		
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