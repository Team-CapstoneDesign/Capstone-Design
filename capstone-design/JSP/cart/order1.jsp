<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>

<html>

<head>
<title>���/����</title>
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/cart.css">

</head>

<body>

	<%
	String id = (String) session.getAttribute("sid");
	%>

	<div class="wrap">
		<div id="header">
			<div class="formbox">
				<a href="../index.jsp">
					<h1 class="logo">
						<span class="blind">����</span>
					</h1>
					</a>
				<div class="topmenuWrap">
					<ul class="topmenu">
						<li><a>ĸ�� Ŀ����</a></li>
						<li><a>���� ĸ��</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="../goods/viewProduct.jsp?ctgType=season">��������</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=signature">�ñ״�ó</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=blending">����</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=original">��������</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=decaf">��ī����</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=beveridge">��������
											/ ��Ŀ��</a></li>
									<li><a href="">���� ��Ű��</a></li>
								</ul>
							</div></li>
						<li><a>Ŀ�� �̾߱�</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="../review/review_list.jsp">ĸ�� ���� ����</a></li>
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
					<span class="quick_menu"><a href="../member/login.jsp">�α���</a></span> <span
						class="quick_menu"><a href="">ȸ������</a></span> <span
						class="quick_menu"><a href="">������</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="../member/mainlogout.jsp">�α׾ƿ�</a></span>
					<span class="quick_menu"><a href="../mypage.jsp">����������</a></span> <span
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
					<div class="cart_subTitle">�ֹ�/����</div>
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
					<div class="stepper-item completed">
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

			<%
			String DB_URL = "jdbc:mysql://localhost:3306/dojan";
			String DB_ID = "multi";
			String DB_PASSWORD = "abcd";

			Class.forName("org.gjt.mm.mysql.Driver");
			Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
			%>

			<!-- �ֹ� / ���� ���� �Է� -->
			<div class="cart_Info">
				<form name="orderInfo" method="post" action="order2.jsp">
					<div class="recycleCap">
						<label for="recycle_rq"> <img
							src="../../images/recycle/recycle_rq.png">
							<p>
								<span>Ŀ�� �� ������ ��õ�ϴ� ���ĵ���!</span>
								<br>����Ͻ� ĸ���� ��Ȱ�� �� �ȿ� �־��ּ���.
								<br>���� ������ڿ� ���߾� ������ ��Ȱ�� ���� �����ص帳�ϴ�.
							</p> <input type="checkbox" name="recycle" value="recycle"
							id="recycle_rq">
						</label>
					</div>

					<div class="cart_section2">
						<div class="cart_title">�ֹ��� ����(�� ���� �״�� �ҷ�����. ���� �Ұ�.)</div>
						<%
							String myid = (String) session.getAttribute("sid");

						String jsql = "select memName, memTel, memEmail from member where memId = ?";
						PreparedStatement pstmt = con.prepareStatement(jsql);
						pstmt.setString(1, myid);

						ResultSet rs = pstmt.executeQuery();
						rs.next();

						String name = rs.getString("memName");
						String tel = rs.getString("memTel");
						String email = rs.getString("memEmail");
						%>
						<div class="cartWrap">
							<div class="cart_cont">
								<div class="cart_wrap_title">�ֹ���</div>
								<div class="cart_wrap_wrap"><%=name%></div>
							</div>
							<div class="cart_cont">
								<div class="cart_wrap_title">��ȭ��ȣ</div>
								<div class="cart_wrap_wrap"><%=tel%></div>
							</div>
							<div class="cart_cont">
								<div class="cart_wrap_title">�̸���</div>
								<div class="cart_wrap_wrap"><%=email%></div>
							</div>
						</div>
					</div>

					<div class="cart_section3">
						<div class="cart_title">����� ����(�� ������ �������� ���� �����ϰ�)</div>
						<div class="cartWrap">
							<th>�޴� ���<br> <input type="text" name="name" id="name" placeholder="�̸��� �Է����ּ���" value="<%=name%>"><br>
							</th>
							<th>��ȣ<br> 
								<input type="text" name="tel1" id="tel1" placeholder="�޴���" maxlength='3'>
								<input type="text" name="tel2" id="tel2" placeholder="��ȣ��" maxlength='4'>
								<input type="text" name="tel3" id="tel3" placeholder="�Է����ּ���" maxlength='4'><br>
							</th>
							<th>�ּ�<br>
								<input type="text" name="zipNo" id="zipNo" placeholder="�����ȣ�� �Է����ּ���" readonly>
								<button type="button" class="findZipNo" onclick="DaumPostcode();">�����ȣ ã��</button><br>
								<input type="text" name="address" id="address" placeholder="�⺻�ּҸ� �Է����ּ���">
								<input type="text" name="addrplus" id="addrplus" placeholder="�ּ� �����׸��� �Է����ּ���"><br>
								<input type="text" name="addressdetail" id="addressdetail" placeholder="���ּҸ� �Է����ּ���">
							</th>
						</div>
					</div>

					<div class="cart_section4">
						<div class="cart_title">���� ����</div>
						<div class="cartWrap">
							<tr>
								<th>
									<label> <input type="radio" name="payment" value="�ſ�ī��" id="card"> �ſ�ī��
									</label> <br> 
									<label> <input type="radio" name="payment" value="īī������" id="kakao"> īī������
									</label> <br> 
									<label> <input type="radio" name="payment" value="�������Ա�" id="bank"> �������Ա�
									</label> <br>
								</th>
							</tr>
						</div>
					</div>

					<div class="cart_Info_button">
						<input type="button" class="btn_backPage" value="<  ��ٱ��� �󼼷� ���ư���">
						<input type="button" class="btn_nextPage" value="���� �ܰ��  >"
							onclick="submitForm()">
					</div>
				</form>
			</div>

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
							<span class="tell"><img src="../images/tell.png" alt=""></span><span
								id="tell_number">02-456-789</span><br> <span
								class="footer_bold">���ð� </span>10:00 ~ 18:00<br> <span
								class="footer_bold">���ڻ�� </span>īī���� �÷��� ģ�� ���<br> ��ǰ �ȳ���
							�ش� ��ǰ �������� �������ּ���
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
							<a href="#" id="shopping_text">���� ���� ����</a><br> <a href="#"
								id="shopping_text">���� �Խ���</a>
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
		<script language="javascript" src="../dojan_js_package.js"></script>
		<script src="../../JS/navEvent.js"></script>
		<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
			// ��Ȱ�� �� �ѱ��
			var recycleCheckbox = document.getElementById("recycleCheckbox");

			recycleCheckbox.addEventListener("change", function() {
				// üũ�Ǿ����� Ȯ��

				if (recycleCheckbox.checked) {
					recycleCheckbox.value = "recycle";

				} else {
					recycleCheckbox.value = "none";
				}
			});
		</script>
</body>

</html>