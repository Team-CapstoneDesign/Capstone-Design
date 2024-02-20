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
		
		try{
			String DB_URL="jdbc:mysql://localhost:3306/dojan";
			String DB_ID="multi";
			String DB_PASSWORD="abcd";
		
			Class.forName("org.gjt.mm.mysql.Driver");
			Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
		
			request.setCharacterEncoding("euc-kr");
		
			String ctgType = request.getParameter("ctgType");
			
			String category_name;

		    if (ctgType.equals("blending"))
				category_name = "���� ĸ��";
			else if (ctgType.equals("decaf"))
				category_name = "��ī���� ĸ��";
			else if (ctgType.equals("season"))
				category_name = "�������� ĸ��";
			else if (ctgType.equals("signature"))
				category_name = "�ñ״�ó ĸ��";
			else if (ctgType.equals("beveridge"))
				category_name = "�������� ĸ��";
			else 
				category_name = "���� ��Ű��";
			
			String jsql = "select * from goods where ctgType = ?";
			PreparedStatement pstmt = con.prepareStatement(jsql);
			pstmt.setString(1, ctgType);
			ResultSet rs = pstmt.executeQuery();
		
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
					                  <li><a href="./viewProduct.jsp?ctgType=decaf">��ī����</a></li>
					                  <li><a href="./viewProduct.jsp?ctgType=beveridge">�������� / ��Ŀ��</a></li>
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
		<div class="sub02_container" name="sub02_product">

			<div class="sub02_section1" name="sub02_header">
				<div class="sub02_headerTitle">
					<div class="sub02_subTilte">���ܸ��� ĸ��</div>
					<ul class="smap">
						<!-- �̴� �׺���̼� -->
						<li><a href="index.html"><img
								src="../../images/smap/icon_home_w.png" alt="Ȩ����"></a></li>
						<li><img class="arrow" src="../../images/smap/icon_arrow_w.png"
							alt="�����޴�"></li>
						<li class="en"><a href="index.html">���� ĸ��</a></li>
						<li><img class="arrow" src="../../images/smap/icon_arrow_w.png"
							alt="�����޴�"></li>
						<li><a href="index.html" class="this"><%=category_name %></a></li>
					</ul>
				</div>
			</div>

			<div class="product_kind_wrap">
				<p class="tit">�з� ����</p>
				<div class="product_select_wrap">
					<form method="post">
						<fieldset>
							<legend class="hid">ĸ�� ī�װ� �� �з� ����</legend>
							<ul class="cate_list">
								<div id="" class="" tabindex="0">
									<div id="" class=""
										style="position: relative; top: 0; left: 0;" dir="ltr">
										<li><input type="checkbox" name="product_all"
											id="product_all"> <label for="product_all">��ü
												ĸ�� ����</label></li>
										<li><input type="checkbox" name="product_signature"
											id="product_signature"> <label
											for="product_signature">�ñ״��� ĸ��</label></li>
										<li><input type="checkbox" name="product_original"
											id="product_original"> <label for="product_original">��������
												ĸ��</label></li>
										<li><input type="checkbox" name="product_blending"
											id="product_blending"> <label for="product_blending">����
												ĸ��</label></li>
										<li><input type="checkbox" name="product_decaf"
											id="product_decaf"> <label for="product_decaf">��ī����
												ĸ��</label></li>
										<li><input type="checkbox" name="product_beverage"
											id="product_beverage"> <label for="product_beverage">��������
												ĸ��</label></li>

										<li><input type="checkbox" name="product_Tsour"
											id="product_Tsour"> <label for="product_Tsour">��
												��</label></li>
										<li><input type="checkbox" name="product_Tsweet"
											id="product_Tsweet"> <label for="product_Tsweet">��
												��</label></li>
										<li><input type="checkbox" name="product_Tbitter"
											id="product_Tbitter"> <label for="product_Tbitter">��
												��</label></li>

										<li><input type="checkbox" name="product_beanBS"
											id="product_beanBS"> <label for="product_beanBS">�����
												���佺</label></li>
										<li><input type="checkbox" name="product_beanCS"
											id="product_beanCS"> <label for="product_beanCS">�ݷҺ��
												��������</label></li>
										<li><input type="checkbox" name="product_beanJB"
											id="product_beanJB"> <label for="product_beanJB">�ڸ���ī
												��縶��ƾ</label></li>
										<li><input type="checkbox" name="product_beanEY"
											id="product_beanEY"> <label for="product_beanEY">��Ƽ���Ǿ�
												����ü��</label></li>
										<li><input type="checkbox" name="product_beanKA"
											id="product_beanKA"> <label for="product_beanKA">�ɳ�
												AA</label></li>
										<li><input type="checkbox" name="product_beanCT"
											id="product_beanCT"> <label for="product_beanCT">�ڽ�Ÿ��ī
												����</label></li>
										<li><input type="checkbox" name="product_beanTA"
											id="product_beanTA"> <label for="product_beanTA">ź�ڴϾ�
												AA</label></li>
										<li><input type="checkbox" name="product_beanYM"
											id="product_beanYM"> <label for="product_beanYM">����
												��ī ��Ÿ��</label></li>
										<li><input type="checkbox" name="product_beanHK"
											id="product_beanHK"> <label for="product_beanHK">�Ͽ���
												�ڳ�</label></li>
										<li><input type="checkbox" name="product_beanGA"
											id="product_beanGA"> <label for="product_beanGA">���׸���
												��Ƽ����</label></li>
										<li><input type="checkbox" name="product_beanPG"
											id="product_beanPG"> <label for="product_beanPG">�ĳ���
												���̻�</label></li>
										<li><input type="checkbox" name="product_beanES"
											id="product_beanES"> <label for="product_beanES">����ٵ���
												SHG</label></li>
										<li><input type="checkbox" name="product_beanIM"
											id="product_beanIM"> <label for="product_beanIM">�ε��׽þ�
												������</label></li>
										<li><input type="checkbox" name="product_beanBR"
											id="product_beanBR"> <label for="product_beanBR">��Ʈ��
												�κν�Ÿ</label></li>
									</div>
								</div>
							</ul>
						</fieldset>
					</form>
				</div>
			</div>

			<div class="product_result_wrap product_result_wrap01" style="display: block;">
				<div class="product_view_tab_wrap">
					<dl class="product_view_tab product_view_tab01">
						<dd>
							<div class="product_list">
								<dl>
									<!-- �ñ״��� ĸ�� -->
									<dt style="display: block;">
										<a href="javascript:void(0);">�ñ״��� ĸ��</a>
										<span class="summary"></span>
									</dt>
									<dd style="display: block;">
										<ul class="product_signature">
										<%
											while(rs.next()){
												String prdNo = rs.getString("prdNo");
												String prdType = rs.getString("prdType");
												String prdName = rs.getString("prdName");
												String prdRoasting = rs.getString("prdRoasting");
												String prdPrice = rs.getString("prdPrice");
												String prdDetail = rs.getString("prdDetail");
											
										%>
											<li class="menuDataSet" new="N" sell="" recomm="0" sold="N">
												<dl>
													<dt>
														<a href="javascript:void(0)" class="">
														<img src="../../images/sample/sample_DS001.png" alt="�ñ״���01"></a>
													</dt>
													<dd><%=prdName%></dd>
													<dd>Ŀ�� �� �Ǵ� �� �Է¶�</dd>
													<dd>1��Ʈ (10��)</dd>
													<dd><%=prdPrice %>��</dd>
												</dl>
											</li>	
										<%
											}
										%>
										</ul>
									</dd>
								</dl>
								<dl>
							</div>
						</dd>
					</dl>
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
			}catch(Exception e){
			out.println(e);
		}
		%>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="../../JS/navEvent.js"></script>
</body>
</html>