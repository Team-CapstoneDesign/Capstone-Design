<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<meta charset="EUC-KR">
<title>�ֹ� �Ϸ�</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/cart.css">
</head>
<body>
	
	<%
		String id = (String) session.getAttribute("sid");
	%> 
	
	<div class="wrap">
		<div class="headerTitle">
			<a href="../index.jsp"><img class="logo" src="../../images/logo.png"
				alt=""> </a>
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
									<li><a href="./goods/viewProduct.jsp?ctgType=blending">������</a></li>
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
					<span class="quick_menu"><a href="">�α���</a></span> <span
						class="quick_menu"><a href="">ȸ������</a></span> <span
						class="quick_menu"><a href="">��������</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="">�α���</a></span> <span
						class="quick_menu"><a href="">ȸ������</a></span> <span
						class="quick_menu"><a href="">��������</a></span>
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
				<div class="cart_subTilte">�ֹ��Ϸ�</div><br><br>
			</div>
		</div>
		
		<div class="cart_content">
			<!-- �ܰ� ���൵ -->
        	<nav class="cartProgress_nav">
			<ul class="cartProgress">

        		<li class="cartProgress_detail" style="border-bottom: 10px solid #e8bb00; font-weight: bold;">
                	<span class="cartProgress_detail_step">
						<span>1�ܰ�</span>
					</span>
                        <span class="cartProgress_detail_title">
                            ��ٱ��� ��
						</span>
                    <span hidden>���� �ܰ�</span>
					<span class="border"></span>
                </li>
				<li class="cartProgress_detail" style="border-bottom: 10px solid #e8bb00; font-weight: bold;">
                	<span class="cartProgress_detail_step">
						<span>2�ܰ�</span>
					</span>
                        <span class="cartProgress_detail_title">
                            ����� �� ���� ���� �Է�
						</span>
                    <span hidden>���� �ܰ�</span>
					<span class="border"></span>
                </li>
				<li class="cartProgress_detail" style="border-bottom: 10px solid #e8bb00; font-weight: bold;">
                	<span class="cartProgress_detail_step">
						<span>3�ܰ�</span>
					</span>
                        <span class="cartProgress_detail_title">
                            �ֹ� �� ���� Ȯ��
						</span>
                    <span hidden>���� �ܰ�</span>
					<span class="border"></span>
                </li>
				<li class="cartProgress_detail" style="border-bottom: 10px solid #e8bb00; font-weight: bold;">
                	<span class="cartProgress_detail_step">
						<span>4�ܰ�</span>
					</span>
                        <span class="cartProgress_detail_title">
                            �ֹ� �Ϸ� �� Ȯ��
						</span>
                    <span hidden>���� �ܰ�</span>
					<span class="border"></span>
                </li>
   	
			</ul>
			</nav>
			</div>
			
			<!-- �ֹ� �Ϸ� -->
			<div class="orderClear">
				<h2>�ֹ� �Ϸ�</h2>
				<h3>�ֹ��� �Ϸ�Ǿ����ϴ�. �������ּż� �����մϴ�.</h3>
				
				<div class="orderClear_button">
					<input type="button" class="btn_goMain" value="�������� ���ư���">
					<input type="button" class="btn_goMypage" value="�� �ֹ����� Ȯ���ϱ�(����������)">
				</div>
			</div>
		
		<!-- Ǫ�� -->
		<footer>
			<div class="footer1">
				<ul>
					<li><a href="">ȸ��Ұ�</a></li>
					<li><a href="">�̿���</a></li>
					<li><a href="">����������޹�ħ </a></li>
					<li><a href="">��������</a></li>
				</ul>
			</div>
			<div class="footer2">
				<div class="call_center">
					<p class="footer_title">������������</p>
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
	<script src="../../JS/dojan_js_package.js"></script>
	<script src="../../JS/navEvent.js"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
</body>
</html>