<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="EUC-KR">
<title>ĸ�� ���� ����</title>
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/review.css">
</head>

 <%    
       String id = (String)session.getAttribute("sid");

       String DB_URL="jdbc:mysql://localhost:3306/dojan";  
       String DB_ID="multi";  
       String DB_PASSWORD="abcd"; 
 	 
	   Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		request.setCharacterEncoding("euc-kr");

		String group;
		int list_index;

		group = request.getParameter("group");
		   
		if (group != null) 	
				list_index = Integer.parseInt(group);  
		else 
				list_index = 0;      

		String jsql = "select count(*) from board";
		PreparedStatement pstmt1 = con.prepareStatement(jsql);
		ResultSet cntRs = pstmt1.executeQuery();	

		cntRs.next();
		int cnt = cntRs.getInt(1);  

		
		int cntList = cnt/6;  
		int remainder = cnt%6; 
		int cntList_1;   
			
		if (cntList != 0) 
		{
			   if (remainder == 0)	 		
				  cntList_1 = cntList;           
			   else                    
				   cntList_1 = cntList + 1; 		  
		 } 
		 else 		 
			  cntList_1 = cntList + 1; 		

			   

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
									<li><a href="">���� ��Ű��</a></li>
								</ul>
							</div></li>
						<li><a>Ŀ�� �̾߱�</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="./review_list.jsp">ĸ�� ���� ����</a></li>
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
					<span class="quick_menu"><a href="../member/logout.jsp">�α׾ƿ�</a></span>
					<span class="quick_menu"><a href="../mypage.jsp">����������</a></span> <span
						class="quick_menu"><a href="">������</a></span>
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
					������ ĸ�� Ŀ���� ���չ��� �����غ�����!
				</div>
				
				<form name="reveiwList" method="post" action="">
					
				<div class="rvBtn"><a href="rwWrite.jsp"><input type="button" class="rvBtn1" value="�� ĸ�� ���� ���� �ۼ��ϱ�" ></a></div>
					
				<div class="reviewContents">
					<!-- ���� �ڽ� ����. �ִ� ���� ���� 9��.-->
		<%	  	
			                	String jsql2 = "select * from board order by idx desc, no";
		                        PreparedStatement pstmt2 = con.prepareStatement(jsql2);
								ResultSet rs = pstmt2.executeQuery();	
				%>	
				<%
									if (!rs.wasNull()) 
									{
									   for(int i = 0; i < list_index * 6; i++) 
									      rs.next();
								
								       int cursor = 0;
								       while (rs.next()) 
									   {
								              int idx = rs.getInt("idx");
								              int no = rs.getInt("no");
								              String name = rs.getString("name");
											  String subject = rs.getString("subject");
								              String base = rs.getString("base");
											  String blend = rs.getString("blend");
								              String roast = rs.getString("roasting");
											  String content = rs.getString("content");

								
								    %> 	
					<div class="reviewBox">
						<div class="RVname"><a href="view_review.jsp?idx=<%=idx%>">[<%= name%>]���� ����</a></div>
						<div class="RVtitle"><a href="view_review.jsp?idx=<%=idx%>"><%= subject%></div>
						<div class="RVbean1">
							<span class="RV_line">���̽� ����</span>
							<div class="RVbase"><%= base%></div>
						</div>
						<div class="RVbean2">
							<span class="RV_line">���� ����</span>
						<%
                       String[] blend_list = blend.split("  ");   
                       for (int i = 0; i < blend_list.length; i++) {
                       %>
							<div class="RVblend"><%= blend_list[i]%></div>
							<%
            }
                      %>
						</div>
						<div class="RVroast">
							<span class="RV_line">�ν��� �ܰ�</span>
							<div class="RVlevel"><%= roast%> �ܰ�</div>
						</div>
						<div class="RVconts"><%= content%></div>
					</div>
					 <%
										cntRs.close();
									   
										 cursor ++;
								         if (cursor >= 6) break; 
								        }   
								    }  
								%>
					<!-- ������� �ڽ� �ݺ�. -->
				</div>
					
				<!-- ������ �ѱ�� ��ư. -->
				<div class="pageBtn" >
 <a href="review_list.jsp?group=<%= list_index - 1 %>">�� ����</a>

	<% 
   
               int start=1;
               int max = cntList_1;
               int end = start + max -1;

	
           for (int j=start; j<=end; j++) 
	   {
		   
           if(j == list_index+1) 
		   {
			   
   %>
	   
            <%= j %>


   <%
            } 
            else 
			{
   %>
        <a href="review_list.jsp?group=<%= j - 1 %>"><%= j %></a>   <!-- ���õ� ���ڴ� ������. �ȵ� ���ڴ� �Ķ��� -->
   <%
            }
       }
   %> 
					 <a href="review_list.jsp?group=<%= list_index + 1 %>">���� ��</a>
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