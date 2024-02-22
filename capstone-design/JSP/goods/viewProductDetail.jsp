<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��ǰ �� ��ȸ</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/sub02.css">
<link rel="stylesheet" href="../../css/productDetail.css">

</head>
<body>
	<%
		String id = (String) session.getAttribute("sid");
		
	%>
	<div class="wrap">
		<div class="headerTitle">
			<a href="../index.jsp"><img class="logo" src="../../images/logo.png" alt=""></a>
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
					                  <li><a href="./viewProduct.jsp?ctgType=season">��������</a></li>
					                  <li><a href="./viewProduct.jsp?ctgType=signature">�ñ״�ó</a></li>
					                  <li><a href="./viewProduct.jsp?ctgType=blending">����</a></li>
					                  <li><a href="./viewProduct.jsp?ctgType=original">��������</a></li>
					                  <li><a href="./viewProduct.jsp?ctgType=decaffeine">��ī����</a></li>
					                  <li><a href="./viewProduct.jsp?ctgType=beverage">�������� / ��Ŀ��</a></li>
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
						<span class="quick_menu"><a href="">�α���</a></span>
						<span class="quick_menu"><a href="">ȸ������</a></span>
						<span class="quick_menu"><a href="">������</a></span>
					<%
						} else {
					%>
						<span class="quick_menu"><a href="">�α׾ƿ�</a></span>
						<span class="quick_menu"><a href="">����������</a></span>
						<span class="quick_menu"><a href="">������</a></span>
					<%
						}
					%>
				</div>
			</div>
		</div>
		
		<!-- ������ -->
		<div class="sub_container" name="sub_product">
			<!-- �׺���̼� ��� -->
			<div class="sub_section1" name="sub_header">
				<div class="sub_headerTitle">
				<div class="sub_subTilte">���� ĸ��</div><br><br>
					<ul class="smap">
						<!-- �̴� �׺���̼� -->
						<li><a href="index.html"><img
								src="../../images/smap/icon_home_w.png" alt="Ȩ����"></a></li>
						<li><img class="arrow" src="../../images/smap/icon_arrow_w.png"
							alt="�����޴�"></li>
						<li class="en"><a href="index.html">���� ĸ��</a></li>
						<li><img class="arrow" src="../../images/smap/icon_arrow_w.png"
							alt="�����޴�"></li>
						<li><a href="index.html">��ǰ�з�</a></li>
						<li><img class="arrow" src="../../images/smap/icon_arrow_w.png"
							alt="�����޴�"></li>
						<li><a href="index.html" class="this">��ǰ��</a></li>
					</ul>
			</div>
		</div>

		<!-- ��ǰ �Ұ� -->
		<div class="productDetail_view">
        <h2>���� �ñ״��� ������</h2>
        <table>
            <caption>
                <details class="hide">
                    <summary>��ǰ����</summary>
                    �ǸŰ�, ��ǰ�ڵ�, �ɼ� �� �����ݾ� �ȳ�
                </details>
            </caption>
            <colgroup>
            <col style="width: 173px;">
            <col>
            </colgroup>
            <tbody>
                <tr>
                    <th>�ν��� �ܰ�</th>
                    <td>����</td>
                </tr>
                <tr>
                    <th>���</th>
                    <td>smell + taste</td>
                </tr>
				<tr>
                    <th>�� ����</th>
                    <td>���ϵ��ϰ� �ε巯����� Ư¡�� ����� ������ �����佺���� ���</td>
                </tr>
				<tr>
                    <th>�⺻ ����</th>
                    <td>1��Ʈ(10��)</td>
                </tr>
				<tr>
                    <th>�ǸŰ�</th>
                    <td class="price">10,900 ��</td>
                </tr>
                <tr>
                    <th>���ż���</th>
                    <td>
						<div class="length">
                            <button id="decrement" onclick="stepper(this)"> - </button>
        					<input type="number" min="1" max="20" step="1" value="1" id="my-input" readonly>
        					<button id="increment" onclick="stepper(this)"> + </button>
                        </div>
                    </td>
                </tr>
				<tr>
                    <th>��ۺ�</th>
                    <td>3,000�� (3���� �̻� ��ۺ� ����)</td>
                </tr>
                <tr>
                    <th>�� �����ݾ�</th>
                    <td class="total"><b>10,900 ��</b></td>
                </tr>
            </tbody>
        </table>
        <div class="img">
            <img src="../../images/sample/sample_DS001.png" alt="thumb" id="big">
            <ul class="thumb_image">
                <li><img src="../../images/sample/sample_small_DS001.png" onMouseOver="showBig('sample_DS001.png');"></li>
                <li><img src="../../images/sample/sample_small_DS002.png" onMouseOver="showBig('sample_DS002.png');"></li>
            </ul>
        </div>
        <div class="btns">
            <a href="#a" class="btn1">���ø���Ʈ�� ���</a>
            <a href="#a" class="btn2">��ٱ��Ͽ� ���</a>
        </div>
    	</div>

		</div>
					
		<!-- ��ǰ �� �Ұ� ���� -->
		<div>
			<img src="../../images/sample/sample_detail.png">
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

	<!-- ��ũ��Ʈ -->	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="../../JS/navEvent.js"></script>
	<script src="../../JS/thumbEvent.js"></script>
	<script src="../../JS/numEvent.js"></script>
	
</body>
</html>