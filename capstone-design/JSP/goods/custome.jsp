<%@ page contentType="text/html;charset=euc-kr" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/custome.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.rawgit.com/InventPartners/Checkbox2Button/32fbe6d/css/checkbox2button.css" />

<script language="javascript" src="../dojan_js_package.js">
</script>

<title>Insert title here</title>
</head>
<body>
	<%
		String id = (String) session.getAttribute("sid");
	%>
	<div class="wrap">
		<div id="header">
			<div class="formbox">
				<h1 class="logo">
					<a href="#"> <span class="blind">����</span>
					</a>
				</h1>
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
					<span class="quick_menu"><a href="">�α���</a></span> <span
						class="quick_menu"><a href="">ȸ������</a></span> <span
						class="quick_menu"><a href="">������</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="../member/logout.jsp">�α׾ƿ�</a></span>
					<span class="quick_menu"><a href="">����������</a></span> <span
						class="quick_menu"><a href="">������</a></span>
					<%
						}
					%>
				</div>
			</div>
		</div>
		<div class="customeWrap custome_main">
			<div class="cont">
				<div id="start-screen">
					<h2 data-aos="fade-up">ĸ�� Ŀ�� Ŀ����</h2>
					<p data-aos="fade-up">12���� �ְ�� ���ο� 6���� ĸ�� Ŀ�� �ӽ� ������ ȣȯ ������ ����
						�� �ϳ����� ĸ���� ��������.</p>

					<button id="startBtn" data-aos="fade-up">ĸ�� �����</button>
				</div>
				<div class="custome_section" id="select-coffee"
					style="display: none;">
					<h2>���̽� ���� �����ϱ�</h2>
					<div id="select-coffee-wrap">
						<img src="../../images/coffeeBean.png" alt="">
					</div>
					<div id="select-coffee-explain"></div>
					<div class="customeRadio" id="coffee-checkbox">
						<!--js�� Ŀ�� üũ�ڽ� �߰�-->
					</div>
					<div class="buttonWrap">
						<button class="custome_btn" id="coffee-next">����</button>
					</div>
				</div>
				<div class="custome_section" id="select-blend"
					style="display: none;">
					<h2>���� ���� �����ϱ�</h2>
					<div id="select-coffee-wrap">
						<img src="../../images/coffeeBean.png" alt="">
					</div>
					<div id="select-coffee-explain"></div>
					<div id="blend-checkbox">
						<!--js�� Ŀ�� üũ�ڽ� �߰�-->
						<input type="checkbox" id="blend_null" name="blendCoffee">
						<label for="blend_null">���þ���</label>
					</div>
					<div class="buttonWrap">
						<button class="custome_btn" id="blend-prev">����</button>
						<button class="custome_btn" id="blend-next">����</button>
					</div>
				</div>
				<div class="custome_section" id="select-roasting"
					style="display: none;">
					<h2>�ν��� �ܰ� ����</h2>
					<div class="roastingPost" id="roasting-info">
						<span id="roastingNum"></span> <span id="roastingName"></span> <span
							id="roastingEx"></span>
					</div>
					<div class="roastingSlide">
						<input class="roasting-step" id="roasting-range" type="range"
							name="roasting" id="temp3" min="1" max="8" value="5" step="1"
							list="markers" required />
						<datalist id="markers">
							<option value="1" label="1"></option>
							<option value="2"></option>
							<option value="3"></option>
							<option value="4"></option>
							<option value="5"></option>
							<option value="6"></option>
							<option value="7"></option>
							<option value="8"></option>
						</datalist>

					</div>
					<div class="buttonWrap">
						<button class="custome_btn" id="roasting-prev">����</button>
						<button class="custome_btn" id="roasting-next">����</button>
					</div>

				</div>
				<div class="custome_section" id="select-machine"
					style="display: none;">
					<h2>Ŀ�� �ӽ� ����</h2>
					<div class="customeRadio" id="machine-radio">
						<input type="radio" id="nespresso-original" name="machine"
							value="�׽������� ��������"><label for="nespresso-original">�׽�������
							��������</label> <input type="radio" id="nespresso-vertuo" name="machine"
							value="�׽������� �����"><label for="nespresso-vertuo">�׽�������
							�����</label> <input type="radio" id="dolceGusto" name="machine"
							value="��ü������"><label for="dolceGusto">��ü������</label> <input
							type="radio" id="illy" name="machine" value="�ϸ�"><label
							for="illy">�ϸ�</label> <input type="radio" id="kanu"
							name="machine" value="ī��"><label for="kanu">ī��</label> <input
							type="radio" id="keurig" name="machine" value="ť����"><label
							for="keurig">ť����</label>
					</div>
					<div class="buttonWrap">
						<button class="custome_btn" id="machine-prev">����</button>
						<button class="custome_btn" id="machine-next"
							onclick="customeResult()">�ϼ�</button>
					</div>
				</div>
				<form name="result" action="../cart/csIncart.jsp" class="custome_section"
					id="select-result" style="display: none;">
					<h2>ĸ�� Ŀ�� �ϼ�</h2>
					<div id="custome_result">
						<p>
							���̽� ����: <span id="custome_base"></span>
						</p>
						<p>
							���� ����: <span id="custome_blend"></span>
						</p>
						<p>
							���� �ܰ�: <span id="custome_roasting"></span>�ܰ�
						</p>
						<p>
							Ŀ�� �ӽ�:<span id="custome_machin"></span>
						</p>
						<p>
							����:<span id="custome_price"></span>
						</p>
            <input type="text" name="customeName" placeholder="Ŀ���� �̸��� �����ּ���">
			<input type="number" name="customeQty" min="1" max="10">
					</div>
					<div id="hiddenInputRadio"></div>
					<div class="buttonWrap">
						<button class="custome_btn" onclick="location.href='custome.html'">ó������
							���ư���</button>
						<button class="custome_btn" onclick="checkCustomeValue()">��ٱ��Ͽ�
							���</button>
					</div>
				</form>
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
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="../../JS/navEvent.js"></script>
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script
		src="https://cdn.rawgit.com/InventPartners/Checkbox2Button/32fbe6d/js/checkbox2button.min.js"></script>

	<script src="../../JS/custome.js"></script>
	<script>
    AOS.init({
      duration: 1000,
    });
  </script>
</body>
</html>