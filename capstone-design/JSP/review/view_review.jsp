<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="EUC-KR">
<title>���� Ȯ���ϱ�</title>
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/review.css">
</head>
<%  String id = (String)session.getAttribute("sid"); %>
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
						<li><a href="../goods/custome.jsp">ĸ�� Ŀ����</a></li>
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
									<li><a href="./review_list.jsp">ĸ�� ���� ����</a></li>
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
							</div></li>
					</ul>
				</div>
				<div class="nav_top">
					<%
						if (id == null) {
					%>
					<span class="quick_menu"><a href="../member/login.jsp">�α���</a></span>
					<span class="quick_menu"><a href="../member/insertMember.jsp">ȸ������</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="../member/mainlogout.jsp">�α׾ƿ�</a></span>
					<span class="quick_menu"><a href="../mypage.jsp">����������</a></span> <span
						class="quick_menu"><a href="../cart/showcart.jsp">��ٱ���</a></span>
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
				<div class="ctgTitle">
					ĸ�� ���� ���� <br> <span>����� ĸ�� Ŀ���� ���չ��� Ȯ���غ�����! </span>
				</div>
				<div class="sub_headerTitle">
					<ul class="smap">
						<!-- �̴� �׺���̼� -->
						<li><a href="../index.jsp">home</a></li>
						<li>></li>
						<li class="en"><a href="./review_list.jsp">Ŀ�� �̾߱�</a></li>
						<li>></li>
						<li><a href="./review_list.jsp" class="this">ĸ�� ���� ����</a></li>
					</ul>
				</div>
			</div>
			</div><br>
			
			<!-- ���� ���� ���� -->
			   <% 

   
       String DB_URL="jdbc:mysql://localhost:3306/dozan";  
       String DB_ID="multi";  
       String DB_PASSWORD="abcd"; 
 	 
	   Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	   String idx = request.getParameter("idx");              
	   String  jsql = "select * from board where idx = ?";
       PreparedStatement pstmt = con.prepareStatement(jsql);
       pstmt.setInt(1, Integer.parseInt(idx));
       ResultSet rs = pstmt.executeQuery();


   if(!rs.wasNull()) {
           rs.next();

	   String name = rs.getString("name");
       String subject = rs.getString("subject");
       String base = rs.getString("base");
	   String blend = rs.getString("blend");
       String roast = rs.getString("roasting");   
       String content = rs.getString("content");
           
   %>
			<div class="reviewPage">
				<div class="reviewPage_title">
					���� �ڼ��� Ȯ���ϱ�
				</div>
				<form>
					<div class="writeRV">
					<table>
						<tr>
						<input type="hidden" name="idx" value="<%= idx%>">
							<th>�ۼ���</th>
							<td><input type="hidden" name="name" value="<%= name%>"><%=name%></td>
						</tr>
						<tr>
							<th>���� ����</th>
							<td class="RVcontents"><input type="hidden" name="subject" value="<%= subject%>"><%= subject%></td>
						</tr>
						<tr>
							<th>���̽� ����</th>
							<td><span><input type="hidden" name="base" value="<%= base%>"><%= base%></span></td>
						</tr>
						<tr>
							<th>���� ����</th>
							<td>
						<%
                       String[] blend_list = blend.split("  ");   
                       for (int i = 0; i < blend_list.length; i++) {
                       %>
								<span><%= blend_list[i]%></span>
								<% } %>
							</td>
						</tr>
						<tr>
							<th>�ν��� �ܰ�</th>
							<td><span><input type="hidden" name="roast" value="<%= roast%>"><%= roast%> �ܰ�</span></td>
						</tr>
						<tr>
							<th>���� ����</th>
							<td class="RVcontents"><input type="hidden" name="content" value="<%= content%>"><%=content%></td>
						</tr>
						</table>
					<%
							    if(!(id == null)){    // �α��� ������ ���̵� ��ġ���������� ������ư �ȶ߰��� 
							    	String  jsql2 = "select * from member where memId = ?";
								    PreparedStatement pstmt2 = con.prepareStatement(jsql2);
								    pstmt2.setString(1, id);
								    ResultSet rs2 = pstmt2.executeQuery();
								    rs2.next();
								    
								    String memName = rs2.getString("memName");
								    if(name.equals(memName)){
									%>
						<div class="modifyRV">
						<a href="review_modify.jsp?idx=<%=idx%>"><input type="button" class="modifyBtn" value="���� �ϱ�"></a>
						<a href="review_list.jsp"><input type="button" class="modifyBtn" value="�������"></a></div>
						<% 
						       } 
									else{ %>
						<div class="modifyRV"><a href="review_list.jsp"><input type="button" class="modifyBtn" value="�������"></a></div>
									<% }
			            	}
					%>
					</div>
				</form>
				<% } %>
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
	<script src="../../JS/dozan_js_package.js"></script>
	<script src="../../JS/navEvent.js"></script>
	
</body>
</html>