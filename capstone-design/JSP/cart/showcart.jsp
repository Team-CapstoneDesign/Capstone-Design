<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>��ٱ���</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/cart.css">
</head>
<body>

	<%
		String id = (String) session.getAttribute("sid");
	%>
	<div class="wrap">
		<div class="headerTitle">
			<a href="../index.jsp"><img class="logo"
				src="../../images/logo.png" alt=""> </a>
		</div>
		<div id="header">
			<div class="formbox">
				<input type="text" placeholder="�˻�">
				<div class="topmenuWrap">
					<ul class="topmenu">
						<li><a>ĸ�� Ŀ����</a></li>
						<li><a>���� ĸ��</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="./goods/viewProduct.jsp?ctgType=season">��������</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=signature">�ñ״�ó</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=blending">����</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=original">��������</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=decaf">��ī����</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=beveridge">��������
											/ ��Ŀ��</a></li>
									<li><a href="">���� ��Ű��</a></li>
								</ul>
							</div></li>
						<li><a>Ŀ�� �̾߱�</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="#">ĸ�� ���� ����</a></li>
									<li><a href="#">���μҰ�</a></li>
									<li><a href="#">Ŀ�� ���� ������</a></li>
									<li><a href="#">���� ��︮�� Ŀ��</a></li>
								</ul>
							</div></li>
						<li><a>���� �̾߱�</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="#">�� ���� ����</a></li>
									<li><a href="#">�� ���� ȯ�氡ġ</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
				<div class="nav_top">
					<%
						if (id == null) {
					%>
					<span class="quick_menu"><a href="./member/login.jsp">�α���</a></span>
					<span class="quick_menu"><a href="">ȸ������</a></span> <span
						class="quick_menu"><a href="">������</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="">�α׾ƿ�</a></span> <span
						class="quick_menu"><a href="">����������</a></span> <span
						class="quick_menu"><a href="">������</a></span>
					<%
						}
					%>
				</div>
			</div>
		</div>

		<!-- ������ -->
		<div class="cart_container" name="cart_product">
			<!-- �׺���̼� ��� -->
			<div class="cart_section1" name="cart_header">
				<div class="cart_headerTitle">
					<div class="cart_subTilte">��ٱ���</div>
					<br>
					<br>
				</div>
			</div>
			<div class="cart_content">
				<!-- �ܰ� ���൵ -->
				<div class="stepper-wrapper">
					<div class="stepper-item completed">
						<div class="step-counter">1</div>
						<div class="step-name">��ٱ���</div>
					</div>
					<div class="stepper-item">
						<div class="step-counter">2</div>
						<div class="step-name">����� �� ���� ���� �Է�</div>
					</div>
					<div class="stepper-item">
						<div class="step-counter">3</div>
						<div class="step-name">�ֹ� �� ���� Ȯ��</div>
					</div>
					<div class="stepper-item">
						<div class="step-counter">4</div>
						<div class="step-name">�ֹ� �Ϸ� �� Ȯ��</div>
					</div>
				</div>
			</div>

			<!-- ��ٱ��� ��ǰ��� -->
			<div class="cartItem_content">
				<form name="cartItem" method="post" action="">
					<%
						try {
						String DB_URL = "jdbc:mysql://localhost:3306/dojan";
						String DB_ID = "multi";
						String DB_PASSWORD = "abcd";

						Class.forName("org.gjt.mm.mysql.Driver");
						Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

						String ctNo = session.getId();

						String jsql = "select * from cart where ctNo = ?";
						PreparedStatement pstmt = con.prepareStatement(jsql);
						pstmt.setString(1, ctNo);

						ResultSet rs = pstmt.executeQuery();

						if (!rs.next()) // ��ٱ��� ��������� ���� ����ٰ� ����ϴ°ź��� �׳� �ƹ��͵� ���� ���̴°͵� �������Ű���
						{
					%>
					<div>
						<a href="deleteAllcart.jsp"><input type="button"
							class="deleteAllBtn" value="��ü ��ǰ ����"></a>
					</div>

					<table class="cartItem_list">
						<tr class="cartItem_header" alt="ĸ�� ���� ���п�">
							<th>���� ĸ��</th>
							<th></th>
							<th>�ǸŰ�</th>
							<th>ĸ������</th>
							<th>���ż���<br>
							<span>(10�� 1��Ʈ + 10ĸ��)</span></th>
							<th>�հ�</th>
							<th></th>
						</tr>
						<%
							} else {
						%>

						<%
							String jsql2 = "select prdNo, ctQty, capType from cart where ctNo = ?";
						PreparedStatement pstmt2 = con.prepareStatement(jsql2);
						pstmt2.setString(1, ctNo);

						ResultSet rs2 = pstmt2.executeQuery();

						int Nomaltotal = 0; //  ����ǰ �Ѱ���
						int Customtotal = 0; //  Ŀ���� �Ѱ���
						int total = 0; //  ����ǰ + Ŀ���� �Ѱ���
						%>

						<div>
							<a href="deleteAllcart.jsp"><input type="button"
								class="deleteAllBtn" value="��ü ��ǰ ����"></a>
						</div>

						<table class="cartItem_list">
							<tr class="cartItem_header" alt="ĸ�� ���� ���п�">
								<th>���� ĸ��</th>
								<th>�ǸŰ�</th>
								<th>ĸ������</th>
								<th>���ż���<br>
								<span>(10�� 1��Ʈ + 10ĸ��)</span></th>
								<th>�հ�</th>
								<th></th>
							</tr>

							<%
								while (rs2.next()) {
								String prdNo = rs2.getString("prdNo"); //  cart���� ��ǰ��ȣ ����
								int ctQty = rs2.getInt("ctQty"); //  cart���� �ֹ����� ���� 
								String capType = rs2.getString("capType"); //  cart���� ĸ��Ÿ�� ����

								String jsql3 = "select prdName, prdPrice, prdPrice2 from goods where prdNo = ?";
								PreparedStatement pstmt3 = con.prepareStatement(jsql3);
								pstmt3.setString(1, prdNo);

								ResultSet rs3 = pstmt3.executeQuery();
								rs3.next();

								String prdName = rs3.getString("prdName"); //   ��ǰ�� ����
								String prdPrice = rs3.getString("prdPrice"); //  ����ǰ �ܰ� ������ ����
								int prdPrice2 = rs3.getInt("prdPrice2"); //  ����ǰ �ܰ� ������ ����  �հ���� ����

								int NomalAmount = prdPrice2 * ctQty;
								Nomaltotal = Nomaltotal + NomalAmount;

								String comNomaltotal = String.format("%,d", Nomaltotal);
							%>
							<tr class="cartItem_product" alt="�� ��ǰ">
								<th><img src="../../images/sample/sample_<%=prdNo%>.png"><%=prdName%></th>
								<th><%=prdPrice%> ��</th>
								<th><%=capType%></th>
								<th><input type="hidden" value="<%=ctQty%>"><%=ctQty%>��Ʈ</th>
								<th><%=comNomaltotal%> ��</th>
								<th><a href="deletecart.jsp?prdNo=<%=prdNo%>"><input
										type="button" class="deleteBtn" value="����"></a></th>
							</tr>

							<%
								} // while�� ��
							} // ����ǰ ���� if-else���� ��    �����ٺ��� Ŀ���� īƮ ���� if-else�� jsql4 ����
							%>


							<tr class="cartItem_header" alt="ĸ�� ���� ���п�">
								<th>Ŀ���� ĸ��</th>
								<th></th>
								<th>�ǸŰ�</th>
								<th>ĸ������</th>
								<th>���ż���<br>
								<span>(10�� 1��Ʈ)</span></th>
								<th>�հ�</th>
								<th></th>
							</tr>
							<tr class="cartItem_product" alt="�� ��ǰ">
								<td><img src="../../images/sample/sample_custom01.png"></td>
								<td>Ŀ�������۸�1</td>
								<td>10,000 ��</td>
								<td>��ü������</td>
								<td><input type="number" min="1" max="20" step="1"
									value="1">��Ʈ</td>
								<td>10,000 ��</td>
								<td><input type="button" class="deleteBtn" value="����"></td>
							</tr>

						</table>

						<div class="cartTotal">
							<div>
								<table class="cartTotal_box">
									<tr class="cartTotal_box_header">
										<th><span class="cartTotal_itemtotal">��ǰ �ݾ�</span></th>
										<th><span class="cartTotal_delivery">��ۺ�</span></th>
										<th><span class="cartTotal_total">�� �ֹ� �ݾ�</span></th>
									</tr>
									<tr class="cartTotal_box_number">
										<th><span>40,000</span>��</th>
										<th><span>3,000</span>��</th>
										<th><span class="realTotal">43,000</span>��</th>
									</tr>
								</table>
							</div>



							<div>
								<input type="button" class="orderButton1" value="�ֹ��ϱ�">
							</div>
						</div>
						</form>
						</div>

						<%
							} catch (Exception e) {
						out.println(e);
						}
						%>
						<!-- Ǫ�� -->
						<footer>
							<div class="footer1">
								<ul>
									<li><a href="">ȸ��Ұ�</a></li>
									<li><a href="">�̿���</a></li>
									<li><a href="">����������޹�ħ </a></li>
									<li><a href="">������</a></li>
								</ul>
							</div>
							<div class="footer2">
								<div class="call_center">
									<p class="footer_title">����������</p>
									<p class="footer_text">
										<span class="tell"><img src="../../images/tell.png"
											alt=""></span><span id="tell_number">02-456-789</span><br>
										<span class="footer_bold">���ð� </span>10:00 ~ 18:00<br> <span
											class="footer_bold">���ڻ�� </span>īī���� �÷��� ģ�� ���<br> ��ǰ
										�ȳ��� �ش� ��ǰ �������� �������ּ���
									</p>
								</div>

								<div class="company">
									<p class="footer_title">ȸ�� ����</p>
									<p class="footer_text">
										<span class="footer_bold">ȸ���</span>(��)���� / �� ���� ����<br> <span
											class="footer_bold">��ǥ</span>������<br> <span
											class="footer_bold">��ǥ��ȭ</span>02-456-789<br> <span
											class="footer_bold">�ּ�</span>����Ư���� ������<br> <span
											class="footer_bold">�̸���</span>alslalsl_06@naver.com<br>
									</p>
								</div>

								<div class="delivery">
									<p class="footer_title">��۾ȳ�</p>
									<p class="footer_text">
										CJ �������(TEL 1588-4321)<br> ��� ��Ȳ�� �ù�� Ȩ�������� �������ּ���<br>
										<a href="#">��� ��Ȳ Ȯ���ϱ�></a>
									</p>
								</div>
							</div>
							<div class="footer3">
								<div class="shopping_menu">
									<p class="footer_title">���� �޴�</p>
									<p class="footer_text">
										<a href="#" id="shopping_text">���� ���� ����</a><br> <a
											href="#" id="shopping_text">���� �Խ���</a>
									</p>
								</div>
								<div class="SNS">
									<p class="footer_title">SNS</p>
									<br>
									<div class="SNSicon">
										<div>
											<a href="#"><img src="../../images/insta.png" alt=""></a>
										</div>
										<div>
											<a href="#"><img src="../../images/twitter.png" alt=""></a>
										</div>
										<div>
											<a href="#"><img src="../../images/youtube.png" alt=""></a>
										</div>
										<div>
											<a href="#"><img src="../../images/naver.png" alt=""></a>
										</div>
									</div>
								</div>
							</div>
						</footer>
						</div>

						<script src="http://code.jquery.com/jquery-latest.min.js"></script>
						<script src="../../JS/navEvent.js"></script>
						<script src="../../JS/numEvent.js"></script>
</body>
</html>