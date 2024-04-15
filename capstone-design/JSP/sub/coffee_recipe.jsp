<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="EUC-KR">
<title>Ŀ�� ���� ������</title>

<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/sub_recipe.css">

</head>
	<%
		String id = (String) session.getAttribute("sid");
	%>
<body>

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
									<li><a href="../goods/viewProduct.jsp?ctgType=season">��������</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=signature">�ñ״�ó</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=blending">����</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=original">��������</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=decaffeine">��ī����</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=beverage">��������
											/ ��Ŀ��</a></li>
								</ul>
							</div></li>
						<li><a>Ŀ�� �̾߱�</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="../review/review_list.jsp">ĸ�� ���� ����</a></li>
									<li><a href="coffee_bean.jsp">���μҰ�</a></li>
									<li><a href="coffee_recipe.jsp">Ŀ�� ���� ������</a></li>
								</ul>
							</div></li>
						<li><a>���� �̾߱�</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="brand_intro.jsp">�� ���� ����</a></li>
									<li><a href="brand_recycle.jsp">�� ���� ȯ�氡ġ</a></li>
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
					���ܿ��� �����̴� Ư���� ������ <br> <span>���� ĸ���� ������ �����ǵ��� ����������! </span>
				</div>
				<div class="sub_headerTitle">
					<ul class="smap">
						<!-- �̴� �׺���̼� -->
						<li><a href="index.html">home</a></li>
						<li>></li>
						<li class="en"><a href="index.html">Ŀ�� �̾߱�</a></li>
						<li>></li>
						<li><a href="index.html" class="this">Ŀ�� ���� ������</a></li>
					</ul>
				</div>
			</div>

		<!-- ������ ���� -->
			
		<!--��� �˾�-->
			<div class="modal">
				<div class="modal_popup">
					<h3>���� ����� ������</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DS001">���� �ñ״�ó ������</a></h4>
					<ul>
						<li>1. ���� �Ŀ���� ������ ���� �쿩�ּ���</li>
						<li>2. ���̽� Ʈ���̿� �ְ� ����ּ���</li>
						<li>3. ���������� �ſ� �ű�� ���� �ñ״�ó �������� �������ּ���</li>
						<li>4. ����ũ��, ���� �Ŀ��, �ٴҶ�÷����� ���� ����ũ���� ����ּ���</li>
						<li>5. ���� �Ŀ���� �ѷ��ּ���</li>
					</ul>
					<button type="button" class="close_btn">�ݱ�</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>���̽� ��� ���� ������</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DO005">���� ������</a></h4>
					<ul>
						<li>1. �ܿ� ��� �÷� �帮���� �ѷ��ּ���</li>
						<li>2. ���� ���� �������� ä���ּ���</li>
						<li>3. ������ �ξ��ּ���</li>
						<li>4. �� ���� ������ ���� �����ָ� �ξ��ּ���</li>
					</ul>
					<button type="button" class="close_btn">�ݱ�</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>�ݵ� ��� ���� ������</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DB004">���� �����̾� ����</a></h4>
					<ul>
						<li>1. ��� ť��� �÷� 1Ƽ��Ǭ�� ������ ������ �ְ� �����ּ���</li>
						<li>2. ������ ������ �ξ��ּ���</li>
						<li>3. ���� �����̾� ������ �������ּ���</li>
						<li>4. ������ Ŀ�Ǹ� �ξ��ּ���</li>
					</ul>
					<button type="button" class="close_btn">�ݱ�</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>�ް� ���� ������</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DO007">���� SHG</a></h4>
					<ul>
						<li>1. ����, �ٴҶ�÷�, ������ �ְ� �����ּ���</li>
						<li>2. ������ ���ϴ� ��ŭ �־��ּ���</li>
						<li>3. ���� SHG�� ���� ���ּ���</li>
						<li>4. �� ���� �ް��� �÷� �ּ���</li>
					</ul>
					<button type="button" class="close_btn">�ݱ�</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>���� ����ġ�� ������</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DT003">���� ���ھ�</a></h4><br><br>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DD002">���� ��ī���� ���׸���</a></h4>
					<ul>
						<li>1. ���� ���ھƸ� ���� ���ּ���</li>
						<li>2. ���� ��ī���� ���׸��� ���� ���ּ���</li>
						<li>3. ���� ���ھ� ���� ������ Ŀ�Ǹ� �ξ��ּ���</li>
						<li>4. �� ���� ũ���� �÷� �ּ���</li>
					</ul>
					<button type="button" class="close_btn">�ݱ�</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>���̽� ����Ŀ�������� ������</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DT001">���� ����Ŀ�� Ƽ</a></h4><br><br>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DB002">���� ����ü�� ����</a></h4>
					<ul>
						<li>1. ���� ����Ŀ�� Ƽ�� ���� ���ּ���</li>
						<li>2. �������� ���� ���� ä���ּ���</li>
						<li>3. ���� ����ü�� ������ ���� ���ּ���</li>
						<li>4. ������ Ŀ�Ǹ� �ξ� �����ּ���</li>
					</ul>
					<button type="button" class="close_btn">�ݱ�</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>�ڸ� Ŀ�� ���̵� ������</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DO008">���� AA</a></h4><br><br>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DT004">���� �ڸ���� �� Ƽ</a></h4>
					<ul>
						<li>1. �������� ���� 2/3 ä���ּ���</li>
						<li>2. �� ���� ���� �ڸ���� �� Ƽ�� ���� ���ּ���</li>
						<li>3. ���� ������ ���� AA�� �� ���� �ξ��ּ���</li>
						<li>4. ź����� �ְ� �� �����ּ���</li>
					</ul>
					<button type="button" class="close_btn">�ݱ�</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>���� ���� ������</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DS004">���� ��ġ ������</a></h4>
					<ul>
						<li>1. ����, ���� ũ��, �ٴҶ� �÷�, ������ �ְ� ��Ǭ���� �� �����ּ���</li>
						<li>2. �� ���� ���� ��ġ �������� ������ �ּ���</li>
						<li>3. ������ ���ϴ� ��ŭ �־��ּ���</li>
					</ul>
					<button type="button" class="close_btn">�ݱ�</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>���̽� ���� ����Ƽ ������</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DB007">���� ���� ����</a></h4>
					<ul>
						<li>1. ���� ���ϴ� ��ŭ �־��ּ���</li>
						<li>2. ����, �ٴҶ� �÷��� �ְ� �ް� �� �����ּ���</li>
						<li>3. ������ �ξ� �� �����ּ���</li>
						<li>4. ���� ������ ���� ���� ������ �� ���� �ξ��ּ���</li>
						<li>5. ������ ���ϴ� ��ŭ �־��ּ���</li>
					</ul>
					<button type="button" class="close_btn">�ݱ�</button>
				</div>
			</div>
		<!--end ��� �˾�-->

<main class="recipe_contents">
    <div class="recipe_box">
        <h2>���� �����</h2>
        <button type="button" class="modal_btn" data-recipe="���� �����">������ ����</button>
    </div>
    <div class="recipe_box">
        <h2>���̽� ��� ����</h2>
        <button type="button" class="modal_btn" data-recipe="���̽� ��� ����">������ ����</button>
    </div>
    <div class="recipe_box">
        <h2>�ݵ� ��� ����</h2>
        <button type="button" class="modal_btn" data-recipe="�ݵ� ��� ����">������ ����</button>
    </div>
    <div class="recipe_box">
        <h2>�ް� ����</h2>
        <button type="button" class="modal_btn" data-recipe="�ް� ����">������ ����</button>
    </div>
    <div class="recipe_box">
        <h2>���� ����ġ��</h2>
		<button type="button" class="modal_btn" data-recipe="���� ����ġ��">������ ����</button>
    </div>
    <div class="recipe_box">
        <h2>���̽� ����Ŀ��������</h2>
		<button type="button" class="modal_btn" data-recipe="���̽� ����Ŀ��������">������ ����</button>
    </div>
    <div class="recipe_box">
		<h2>�ڸ� Ŀ�� ���̵�</h2>
		<button type="button" class="modal_btn" data-recipe="�ڸ� Ŀ�� ���̵�">������ ����</button>
    </div>
    <div class="recipe_box">
        <h2>���� ����</h2>
		<button type="button" class="modal_btn" data-recipe="���� ����">������ ����</button>
    </div>
    <div class="recipe_box">
        <h2>���̽� ���� ����Ƽ</h2>
        <button type="button" class="modal_btn" data-recipe="���̽� ���� ����Ƽ">������ ����</button>
    </div>
</main>

<!-- ������ �� -->

			
		</div>
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

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="../../JS/navEvent.js"></script>
	<script language="javascript" src="../../JS/modal_popup.js"></script>
</body>
</html>