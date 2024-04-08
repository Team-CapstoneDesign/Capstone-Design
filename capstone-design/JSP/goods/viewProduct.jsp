<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��ǰ ��ȸ</title>

<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/sub02.css">

</head>
<body>
	<%
		String id = (String) session.getAttribute("sid");

	try {
		String DB_URL = "jdbc:mysql://localhost:3306/dojan";
		String DB_ID = "multi";
		String DB_PASSWORD = "abcd";

		Class.forName("org.gjt.mm.mysql.Driver");
		Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

		request.setCharacterEncoding("euc-kr");

		String ctgType = request.getParameter("ctgType");

		String category_name;

		if (ctgType.equals("season"))
			category_name = "�������� ĸ��";
		else if (ctgType.equals("signature"))
			category_name = "�ñ״�ó ĸ��";
		else if (ctgType.equals("blending"))
			category_name = "���� ĸ��";
		else if (ctgType.equals("original"))
			category_name = "�������� ĸ��";
		else if (ctgType.equals("decaffeine"))
			category_name = "��ī���� ĸ��";
		else if (ctgType.equals("beverage"))
			category_name = "�������� ĸ�� / ��Ŀ��";
		else
			category_name = "���� ��Ű��";

		String jsql = "select * from goods where ctgType = ?";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setString(1, ctgType);
		ResultSet rs = pstmt.executeQuery();
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
						<li><a href="./custome.jsp">ĸ�� Ŀ����</a></li>
						<li><a>���� ĸ��</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="./viewProduct.jsp?ctgType=season">��������</a></li>
									<li><a href="./viewProduct.jsp?ctgType=signature">�ñ״�ó</a></li>
									<li><a href="./viewProduct.jsp?ctgType=blending">����</a></li>
									<li><a href="./viewProduct.jsp?ctgType=original">��������</a></li>
									<li><a href="./viewProduct.jsp?ctgType=decaffeine">��ī����</a></li>
									<li><a href="./viewProduct.jsp?ctgType=beverage">��������
											/ ��Ŀ��</a></li>
								</ul>
							</div></li>
						<li><a>Ŀ�� �̾߱�</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="../review/review_list.jsp">ĸ�� ���� ����</a></li>
									<li><a href="../sub/coffee_bean.jsp">���μҰ�</a></li>
									<li><a href="../sub/coffee_recipe.jsp">Ŀ�� ���� ������</a></li>
								</ul>
							</div></li>
						<li><a>���� �̾߱�</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="../sub/brand_intro.jsp">�� ���� ����</a></li>
									<li><a href="../sub/brand_recycle.jsp">�� ���� ȯ�氡ġ</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<div class="nav_top">
					<%
						if (id == null) {
					%>
					<span class="quick_menu"><a href="../member/login.jsp">�α���</a></span>
					<span class="quick_menu"><a href="">ȸ������</a></span> <span
						class="quick_menu"><a href="">������</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="../member/logout.jsp">�α׾ƿ�</a></span>
					<span class="quick_menu"><a href="../mypage.jsp">����������</a></span> <span
						class="quick_menu"><a href="">������</a></span>
					<%
						}
					%>
				</div>
			</div>
		</div>

		<div class="sub_container" name="sub_product">

			<div class="sub_section1" name="sub_header">
				<div class="ctgTitle">
					���ܿ����� ���� �� �ִ� Ư���� ĸ��<br> <span>�ϻ� �� ������ ������ ��⼼�� </span>
				</div>
				<div class="sub_headerTitle">
					<ul class="smap">
						<!-- �̴� �׺���̼� -->
						<li><a href="index.html">home</a></li>
						<li>></li>
						<li class="en"><a href="index.html">���� ĸ��</a></li>
						<li>></li>
						<li><a href="index.html" class="this"><%=category_name%></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="product_result_wrap product_result_wrap01"
			style="display: block;">

			<div class="product_view_tab_wrap">
				<div class="product_list">
					<!-- ������ ������ �κ� -->
					<ul class="">
						<%
							while (rs.next()) {
							String prdNo = rs.getString("prdNo");
							String prdType = rs.getString("prdType");
							String prdName = rs.getString("prdName");
							String prdRoasting = rs.getString("prdRoasting");
							String prdPrice = rs.getString("prdPrice");
							String prdSmell = rs.getString("prdSmell");
							String prdTaste = rs.getString("prdTaste");
						%>

						<li class=""><a href="viewProductDetail.jsp?prdNo=<%=prdNo%>">
								<img src="../../images/capdesign/<%=prdNo%>.png"
								alt="<%=prdNo%>">
						</a>
							<div class="product_info">
								<p class="product_name"><%=prdName%></p>
								<p class="blending"><%=prdType%></p>
								<div class="product_info_detail">
									<div class="detail">
										<span class="detail1">�ν���</span> <span class="detail2"><%=prdRoasting%></span>
									</div>

									<div class="detail">

										<span class="detail1">��</span> <span class="detail2"><%=prdSmell%></span>
									</div>
									<div class="detail">
										<span class="detail1">��</span> <span class="detail2"><%=prdTaste%></span>
									</div>
									<div class="detail">
										<span class="detail1">����</span> <span class="detail2"><%=prdPrice%></span>
									</div>
								</div>
								<a class="move_detail"
									href="viewProductDetail.jsp?prdNo=<%=prdNo%>"> �ڼ��� ���� </a>
							</div></li>
						<%
							}
						%>
					</ul>
				</div>
			</div>

		</div>

	</div>
	</div>

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
					<span class="tell"><img src="../../images/tell.png" alt=""></span><span
						id="tell_number">02-456-789</span><br> <span
						class="footer_bold">���ð� </span>10:00 ~ 18:00<br> <span
						class="footer_bold">���ڻ�� </span>īī���� �÷��� ģ�� ���<br> ��ǰ �ȳ��� �ش�
					��ǰ �������� �������ּ���
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
					CJ �������(TEL 1588-4321)<br> ��� ��Ȳ�� �ù�� Ȩ�������� �������ּ���<br> <a
						href="#">��� ��Ȳ Ȯ���ϱ�></a>
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
	<%
		} catch (Exception e) {
	out.println(e);
	}
	%>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="../../JS/navEvent.js"></script>
</body>
</html>