<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �Ұ�</title>

<link rel="stylesheet" href="../../css/style.css">

<link rel="stylesheet" href="../../css/sub_beans.css">

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
					���ܿ��� ���� �� �ִ� ���� <br> <span>���ܿ��� ������ ���ε��� �Ұ��մϴ�. </span>
				</div>
				<div class="sub_headerTitle">
					<ul class="smap">
						<!-- �̴� �׺���̼� -->
						<li><a href="index.html">home</a></li>
						<li>></li>
						<li class="en"><a href="index.html">Ŀ�� �̾߱�</a></li>
						<li>></li>
						<li><a href="index.html" class="this">���� �Ұ�</a></li>
					</ul>
				</div>
			</div>

			<main>
				<div class="beans_contents">
				  <header class="beans_title">
					<h3>������ �ո����� ���ݿ� �پ��ϰ� �ֻ��� ������ ���ε��� �����ϱ� ���� ����մϴ�.</h3>
				  </header>  
				  <div class="coffee_beans_list">
					<div class="beans_info">
					  <img src="../../images/beansinfo/01_BS.png">
					  <h4>����� ���佺</h4>
					  <p>����� ���佺�� ���� Ŀ�ǻ��귮�� 30%�� �����ϸ�, ���佺 ������ 3, 4�� ���� �� � Ŀ�ǳ������� ��Ȯ�� Ŀ�Ƿ�, NO.2����� �ְ� ����Դϴ�. �ε巯�� ���� �Ÿ��� �����ϰ� ��ȭ�� �̷��, �ε巯�� ǳ�̿� ������ ������ ��췯�� �߼����� Ŀ�Ƿ� ���� ��� ����� ���ϵ� Ŀ���Դϴ�.</p>      
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/02_CS.png">
					  <h4>�ݷҺ�� ��������</h4>
					  <p>�ݷҺ�ƴ� ���� ǰ�� ����� �ҹ��� Ŀ�Ǹ� �����س��� �����, ���귮�� ���� 3���� ���귮�� ���̸�, �������� ����� ���� Ŀ�Ǵ� �ְ�� ���η� �ղ����ϴ�. �߷��� �ִ� ���� ���� ���, �������� �굵�� Ư¡�̸�, � ������ �ν��ÿ��� ���� ���� ���� ��� Ŀ���Դϴ�.</p>      
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/03_JB.png">
					  <h4>�ڸ���ī ��縶��ƾ</h4>
					  <p>�ڸ���ī ��縶��ƾ�� ���� 3�� ���η�, �ڸ���ī ��縶��ƾ ���� �ع� 1,200���Ͱ� �Ѵ� �����뿡���� ���ǰ�, ������ ���� �Ʒ� �ų� ���� �縸 �����մϴ�. Ŀ�ǰ� ���� �Ÿ�, �ܸ�, ����Ű�� ���� ����� �ε巯��鼭�� ����� ���� ��ȭ�Ӱ� ����, �� ���� ���� ���� ��Ŀ���� Ȳ������� �Ҹ���ϴ�.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/04_EY.png">
					  <h4>��Ƽ���Ǿ� ����ü��</h4>
					  <p>��Ƽ���ǾƸ� ��ǥ�ϴ� ���� ���� ü���� ��������� �̸��̸�, �������� ���� ���� ���� �پ�ϴ�. �Ÿ��� ���ϰ� ��� �ٵ��� �ִ� Ŀ�Ƿ�, �߶��� ������ ������ �������� ������ �Ÿ��� �ܸ��� �뷱���� ��ȭ�� �̷�� ��Ƽ���Ǿ� Ŀ���� ���� ��޽����� ���õ� Ŀ�Ƿ� �� �޽��ϴ�.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/05_YM.png">
					  <h4>���� ��ī ��Ÿ��</h4>
					  <p>�ƶ��� �ݵ� �����ο� ��ġ�� ���� ���� ��Ÿ������ ����Ǵ� Ŀ�Ƿ� '��Ÿ��'�� ������ �ְ�� Ŀ�� �������, �Ѷ� ���� Ŀ�� ������ �ְ�� ������ �ױ��� '��ī��'�̸��� �� Ŀ���Դϴ�. ���� 3�� ���� �� �ϳ���, ���ϸ��� ǳ���ϰ� �� ������ ��ũ ���ݸ��� ���� ��ȭ�Ӱ�, ������ ������ �ܸ��� ���ϰ� �ֽ��ϴ�.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/06_TA.png">
					  <h4>ź�ڴϾ� AA</h4>
					  <p>ų�����ڷ� Ŀ�Ƕ�� �ϸ�, 'AA'�� �ְ�� ������� �Ÿ�, �ٵ�, ������ ��� ����ϸ� ���ο��� �������� ����� ��̿� �߰����� ���ݸ���̰� Ư¡�Դϴ�. ���� ��� �Ÿ�, �ܸ�, ������ �����ϰ� ��ȭ�� �̷�� ��Ư�� ��� �ε巯�� ���� ���ϰ� ������ ī���� �Է��� �������� Ư¡�Դϴ�.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/07_KA.png">
					  <h4>�ɳ� AA</h4>
					  <p>�ɳ� AA�� �ع� 2,000���Ͱ� �Ѵ� �����뿡�� ����Ǵ� Ŀ�Ƿ�, 'AA'�� ������ ũ�⸦ ��Ÿ����, ���� ū �����̸鼭 �ְ���� �ǹ��ϴ� ����Դϴ�. ���� ���ϰ� ������ �ٵ�, ������� ���ϰ��� ��ŭ�� �Ÿ��� Ư¡�� �����̾� Ŀ�Ƿ� ��Ư�� �Խ��� ���� ��ǰ�Դϴ�.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/08_CT.png">
					  <h4>�ڽ�Ÿ��ī ������</h4>
					  <p>�߳����� �����̶� �Ҹ��� �ڽ�Ÿ��ī�� 1800������ Ŀ�Ǹ� ����Ͽ� ���� 9���� Ŀ�Ǵ뱹 �Դϴ�. �ƶ��ī���� �����ϸ�, �����ִ� ���� �ְ�� ����� ���� Ŀ�Ǹ� ���մϴ�. �����ϰ� ������ �ܸ��� �Ÿ��� �ణ�� �Խθ��� ���� ��ȭ�Ӱ�, ��Ʈ�� �����԰� ������ �ٵ��� ���� Ŀ���Դϴ�.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/09_HC.png">
					  <h4>�Ͽ��� �ڳ�</h4>
					  <p>�Ͽ��� �ڳ��� �Ͽ��� �ڳ������� ���, ��Ȯ�� Ŀ�Ǹ� ���ϴµ� ���⼭�� �ְ� ����� ����Ʈ�� ��ö�� ��޿� ���ؼ��� ���� 3�� ���η� �з��˴ϴ�. Ŀ�ǿ� ����� ���������� �����ϰ� ����, ������ �Ÿ��� ��ǰ�̶� �򰡹޽��ϴ�.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/10_PG.png">
					  <h4>�Ĵϸ� ���̻�</h4>
					  <p>�ĳ��� ������ �ִ� �ĳ����� ������, ����� ȭ�� ���, ǳ���� ���췮���� ������ ���� �Ǹ��� Ŀ�Ǹ� ������ ����� �����ϸ�, �ĳ����� ���̻��� �ְ�� �����Ƽ Ŀ�Ƿ� ���� ���� ���� ���, �ٵ����� Ŀ�� ���ϾƵ� ���̿��� ����ް� �ֽ��ϴ�.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/11_GA.png">
					  <h4>���׸��� ��Ƽ����</h4>
					  <p>��Ƽ���ƴ� ���׸��󿡼� ���� �����ǰ� ������ Ŀ�� ������������, ����Ű�� ���� ���� ���� ǳ�̰� ��ǰ����, �Ÿ��� ���ϰ� ��ĥ���� ���ϴ�. ȭ���������� �ַ� Ŀ�Ǹ� �����Ͽ� ��� ����ŰĿ�Ƿ� �����ϸ�, ��̿� �ٵ� ���� �������� �Ÿ�, ���ݸ��� ��̿� ����Ű�� ���� Ư¡�Դϴ�.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/12_ES.png">
					  <h4>����ٵ��� SHG</h4>
					  <p>�߾ӾƸ޸�ī�� ��ġ�� �ִ� ����ٵ����� ���δ� ũ�Ⱑ �۰� ���е��� ���� ���Դϴ�. �ε巯�� ���ݸ��� ĳ���� ���� �پ ��̿� ���� ��̷� ����� �뷱���� �ڶ��մϴ�. ���߷� ������ �� �� ������ û����, ������ �ܸ��� Ư¡�̸� �Ĺݺο� ������ �ܸ��� ������ �ŷ����Դϴ�.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/13_IM.png">
					  <h4>�ε��׽þ� ������</h4>
					  <p>�������� �αⰡ ���� �������� �߳��� Ŀ�ǿ� ���� �ε巯��鼭�� ���� �󵵸� ���� Ŀ���Դϴ�. ����Ʈ�� ���� Ư���� ������� ���� ���ݸ� ���� ����ϰ� ������ ���� ���ϴ�. �����ϰ� ������ �ٵ� ������ ǳ���� ���� ���ϴ�.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/14_VR.png">
					  <h4>��Ʈ�� �κν�Ÿ</h4>
					  <p>�κν�Ÿ ǰ���� ��ǥ �������� ��Ʈ�� �κν�Ÿ�� ����ϰ� ���ϵ��ϸ� ��ũ ���ݸ�ó�� ������ ���� �ŷ��Դϴ�. �κν�Ÿ�� ��ǥ������ �ͽ�Ŀ���� �ֿ���ε� ���Ǹ� ����� ���� Ư¡�� ��ŭ ���� ������ �ֿ���� ���ǰ� �ֽ��ϴ�.</p>
					</div>
				  </div>
				</div>    
			  </main>

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
</body>
</html>