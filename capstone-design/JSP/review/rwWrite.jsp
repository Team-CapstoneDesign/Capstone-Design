<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �ۼ��ϱ�</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/review.css">

<script language="javascript" src="../dojan_js_package.js">
	</script>

</head>
<body>	
	<%
		String id = (String) session.getAttribute("sid");
	%> 
	<div class="wrap">
		<div class="headerTitle">
			<a href="../../index.jsp"><img class="logo" src="../../images/logo.png"
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
					<span class="quick_menu"><a href="./member/mainlogout.jsp">�α׾ƿ�</a></span>
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
				<div class="sub_subTilte">ĸ�� ���� ����</div><br><br>
					<ul class="smap">
						<!-- �̴� �׺���̼� -->
						<li><a href="index.html"><img
								src="../../images/smap/icon_home_w.png" alt="Ȩ����"></a></li>
						<li><img class="arrow" src="../../images/smap/icon_arrow_w.png"
							alt="�����޴�"></li>
						<li class="en"><a href="index.html">Ŀ�� �̾߱�</a></li>
						<li><img class="arrow" src="../../images/smap/icon_arrow_w.png"
							alt="�����޴�"></li>
						<li><a href="index.html" class="this">ĸ�� ���� ����</a></li>
					</ul>
					
				</div>
			</div><br>
			
			<!-- ���ε� �� ���� ����Ʈ ���� -->
			<div class="reviewPage">
				<div class="reviewPage_title">
					ĸ�� Ŀ������ ��̳���? �ı⸦ �ۼ����ּ���!
				</div>
				<%

						String DB_URL = "jdbc:mysql://localhost:3306/dojan";
						String DB_ID = "multi";
						String DB_PASSWORD = "abcd";

						Class.forName("org.gjt.mm.mysql.Driver");
						Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);  

						request.setCharacterEncoding("euc-kr");

						String jsql = "select * from member where memId = ?";
						PreparedStatement pstmt = con.prepareStatement(jsql);
						pstmt.setString(1, id);
						ResultSet rs = pstmt.executeQuery();
						rs.next();
	
						String userName = rs.getString("memName");

						
						String jsql2 = "SELECT oc.ordRoast, oc.ordOrigin, oc.ordBlend " +
                                       "FROM ordercustom oc INNER JOIN orderinfo oi ON oc.ordNo = oi.ordNo " +
                                       "WHERE oi.memId = ?";                                //  memID�̿��ؼ� ordercustom�� ����� ���̽�, ���� ����, �ν��ôܰ� ������
						PreparedStatement pstmt2 = con.prepareStatement(jsql2);
						pstmt2.setString(1, id);
						ResultSet rs2 = pstmt2.executeQuery();

						rs2.next();


						String ordRoast = rs2.getString("ordRoast");
                        String ordOrigin = rs2.getString("ordOrigin");
                        String ordBlend = rs2.getString("ordBlend");
													
													

				%>
				<form name="rwWrite" method="post" action="rwWrite_Result.jsp">
					<div class="writeRV">
					<table>
						<tr>
							<th>�ۼ���</th>
							<td><input type="hidden" value="<%=userName%>" name="rwName"><%=userName%></td>
						</tr>
						<tr>
							<th>���� ����</th>
							<td><input type="text" value="������ �Է����ּ���." name="rwTitle"></td>
						</tr>
						<tr>
							<th>���̽� ����</th>
							<td><input type="hidden" value="<%=ordOrigin%>" name="rwOrigin"><span><%=ordOrigin%></span></td>
						</tr>
						<tr>
							<th>���� ����</th>
							<td><input type="hidden" value="<%=ordBlend%>" name="rwBlend">
		           	<%
                       String[] blend = ordBlend.split("  ");   
                       for (int i = 0; i < blend.length; i++) {
                       %>
                         <span><%= blend[i] %></span>
                     <%
            }
                      %>
		                </td>
						</tr>
						<tr>
							<th>�ν��� �ܰ�</th>
							<td><input type="hidden" value="<%=ordRoast%>" name="rwRoast"><span><%=ordRoast%>�ܰ�</span></td>
						</tr>
						<tr>
							<th>�ı� ����</th>
							<td><textarea name="rwContent">������ �Է����ּ���.</textarea></td>
						</tr>
					</table>
						
						<div class="uploadRV"><input type="button" class="uploadBtn" value="�ۼ� �Ϸ�" onclick="reviewOK()"></div>
						
					</div>
				</form>
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
	<script src="../../JS/dojan_js_package.js"></script>
	<script src="../../JS/navEvent.js"></script>
	
</body>
</html>