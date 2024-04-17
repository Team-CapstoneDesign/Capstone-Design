<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ȸ������ ����</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/memberSetting.css">
    <link hrefn="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

</head>

<body>
       <%
        String id = (String) session.getAttribute("sid");
        if (id == null) {
    %>
        <script>
            alert("�α����� �ʿ��� �����Դϴ�!");
	           window.location.href = "./member/login.jsp";
        </script>
    <%
        }
    %>
    <div id="wrap">
        <div id="header">
            <div class="formbox">
                <a href="./index.jsp">
                    <h1 class="logo">
                        <span class="blind">����</span>
                    </h1>
                </a>
                <div class="topmenuWrap">
                    <ul class="topmenu">
						<li><a href="./goods/custome.jsp">ĸ�� Ŀ����</a></li>
						<li><a>���� ĸ��</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="./goods/viewProduct.jsp?ctgType=season">��������</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=signature">�ñ״�ó</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=blending">����</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=original">��������</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=decaffeine">��ī����</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=beverage">��������
											/ ��Ŀ��</a></li>
								</ul>
							</div></li>
						<li><a>Ŀ�� �̾߱�</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="./review/review_list.jsp">ĸ�� ���� ����</a></li>
									<li><a href="./sub/coffee_bean.jsp">���μҰ�</a></li>
									<li><a href="./sub/coffee_recipe.jsp">Ŀ�� ���� ������</a></li>
								</ul>
							</div></li>
						<li><a>���� �̾߱�</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="./sub/brand_intro.jsp">�� ���� ����</a></li>
									<li><a href="./sub/brand_recycle.jsp">�� ���� ȯ�氡ġ</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
				<div class="nav_top">
					<%
						if (id == null) {
					%>
					<span class="quick_menu"><a href="./member/login.jsp">�α���</a></span>
					<span class="quick_menu"><a href="./member/insertMember.jsp">ȸ������</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="./member/mainlogout.jsp">�α׾ƿ�</a></span>
					<span class="quick_menu"><a href="mypage.jsp">����������</a></span> <span
						class="quick_menu"><a href="./cart/showcart.jsp">��ٱ���</a></span>
					<%
						}
					%>
				</div>
			</div>
		</div>
		<% 
		 String DB_URL="jdbc:mysql://localhost:3306/dojan";  
         String DB_ID="multi";  
         String DB_PASSWORD="abcd";
 	 
	     Class.forName("org.gjt.mm.mysql.Driver"); 
    	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
	
	     String jsql = "select * from member where memId = ?";
	     PreparedStatement pstmt = con.prepareStatement(jsql);
	     pstmt.setString(1,id);

	     ResultSet rs = pstmt.executeQuery();
	     rs.next(); 

		 String memId = rs.getString("memId");
    	 String pw = rs.getString("memPwd");
	 	 String name = rs.getString("memName");
	 	 String email = rs.getString("memEmail");
	 	 String birth = rs.getString("memBirth");
		 String phone = rs.getString("memTel");

		 %>
        <div class="memberSetting_wrap">
            <div class="info_cont">
                <form name="modifyMem" action="memberUpdateResult.jsp">
                    
                    <div class="member_info">
                        <h3>��������</h3>
                        <div class="member_list">
                            <span class="gray-40">�̸�</span>
                            <span class="gray-80"><input class="inputText" type="text" name="name" value="<%=name%>"></span>
                            <span class="gray-40">�������</span>
                            <span class="gray-80"><input class="inputText" type="text" name="birth" value="<%=birth%>"></span>
                            <span class="gray-40">�޴���</span>
                            <span class="gray-80"><input class="inputText" type="text" name="phone" value="<%=phone%>"></span>
                            <span class="gray-40">�̸���</span>
                            <span class="gray-80"><input class="inputText" type="text" name="email" value="<%=email%>"></span>
                        </div>
                    </div>
                    <div class="member_info">
                        <h3>�⺻���� ����</h3>
                        <div class="member_list">
                            <span class="gray-40">���̵�</span>
                            <span class="gray-80"><input class="inputText" type="hidden" name="memId" value="<%=id%>"><%= id%></span>
                            <span class="gray-40">��й�ȣ</span>
                            <span class="gray-80"><input class="inputText" type="text" name="pwd" value="<%=pw%>"></span>
                        </div>
                    </div>
                    
                   <a href="#" onclick="modifyOK()"><div class="memberUpdate_btn">ȸ�� ���� ���� �Ϸ�</div></a>
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
                        <span class="tell"><img src="../images/tell.png" alt=""></span><span
                            id="tell_number">02-456-789</span><br>
                        <span class="footer_bold">���ð� </span>10:00 ~ 18:00<br>
                        <span class="footer_bold">���ڻ�� </span>īī���� �÷��� ģ�� ���<br>
                        ��ǰ �ȳ��� �ش� ��ǰ �������� �������ּ���
                    </p>
                </div>

                <div class="company">
                    <p class="footer_title">ȸ�� ����</p>
                    <p class="footer_text">
                        <span class="footer_bold">ȸ���</span>(��)���� / �� ���� ����<br>
                        <span class="footer_bold">��ǥ</span>������<br>
                        <span class="footer_bold">��ǥ��ȭ</span>02-456-789<br>
                        <span class="footer_bold">�ּ�</span>����Ư���� ������<br>
                        <span class="footer_bold">�̸���</span>alslalsl_06@naver.com<br>
                    </p>
                </div>

                <div class="delivery">
                    <p class="footer_title">��۾ȳ�</p>
                    <p class="footer_text">
                        CJ �������(TEL 1588-4321)<br>
                        ��� ��Ȳ�� �ù�� Ȩ�������� �������ּ���<br>
                        <a href="#">��� ��Ȳ Ȯ���ϱ�></a>
                    </p>
                </div>
            </div>
            <div class="footer3">
                <div class="shopping_menu">
                    <p class="footer_title">���� �޴�</p>
                    <p class="footer_text">
                        <a href="#" id="shopping_text">���� ���� ����</a><br>
                        <a href="#" id="shopping_text">���� �Խ���</a>
                    </p>
                </div>
                <div class="SNS">
                    <p class="footer_title">SNS</p><br>
                    <div class="SNSicon">
                        <div><a href="#"><img src="../images/insta.png" alt=""></a></div>
                        <div><a href="#"><img src="../images/twitter.png" alt=""></a></div>
                        <div><a href="#"><img src="../images/youtube.png" alt=""></a></div>
                        <div><a href="#"><img src="../images/naver.png" alt=""></a></div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="../JS/navEvent.js"></script>
	<script>
	function modifyOK(){
		modifyMem.submit();
	}
	</script>

</body>

</html>
