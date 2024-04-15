<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��ǰ �� ��ȸ</title>
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/productDetail.css">

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
        
	String prdNo = request.getParameter("prdNo");
	String jsql = "select * from goods where prdNo = ?";
	PreparedStatement pstmt = con.prepareStatement(jsql);
	pstmt.setString(1, prdNo);
	ResultSet rs = pstmt.executeQuery();
    				
	%>
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
									<li><a href="./viewProduct.jsp?ctgType=season">��������</a></li>
									<li><a href="./viewProduct.jsp?ctgType=signature">�ñ״�ó</a></li>
									<li><a href="./viewProduct.jsp?ctgType=blending">����</a></li>
									<li><a href="./viewProduct.jsp?ctgType=original">��������</a></li>
									<li><a href="./viewProduct.jsp?ctgType=decaffeine">��ī����</a></li>
									<li><a href="./viewProduct.jsp?ctgType=beverage">��������
											/ ��Ŀ��</a></li>
								</ul>
							</div></li>
						<li><a>Ŀ�� �̾߱�</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="../review/review_list.jsp">ĸ�� ���� ����</a></li>
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
							</div>
						</li>
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
		<% 
		while(rs.next()){
			String num = rs.getString("prdNo");
			String name = rs.getString("prdName");
			String roast = rs.getString("prdRoasting");
			String price = rs.getString("prdPrice");
			String smell = rs.getString("prdSmell");
			String taste = rs.getString("prdTaste");
			String detail = rs.getString("prdDetail"); 
			String ctgType = rs.getString("ctgType"); 
		%>
		<!-- ������ -->
		<!-- ��ǰ �Ұ� -->
		<div class="containerWrap">
      <div class="productDetail_view">   
        <div class="img">
          
          <ul class="thumb_image">
            <li><img src="../../images/capdesign/<%=num%>.png" onMouseOver="showBig('../../images/capdesign/<%=num%>.png');">
            </li>
            <li><img src="../../images/capdesign/<%=num%>.png" onMouseOver="showBig('../../images/capdesign/<%=num%>.png');">
            </li>
          </ul>
          <img src="../../images/capdesign/<%=num%>.png" alt="thumb" id="big">
        </div>   
        <form action="../cart/incart.jsp" name="selectCapsule">
          <div class="productDetail_list">
            <h2><%=name%></h2>
            <input type=hidden name=prdNo value="<%=num%>">
            <div class="productDetail_detail">
              <span class="productDetail_detail1">�ν��� �ܰ�</span>
              <span class="productDetail_detail2"><%=roast%></span>
            </div>
            <div class="productDetail_detail">
              <span class="productDetail_detail1">���</span>
              <span class="productDetail_detail2"><%=smell%></span>
            </div>
            <div class="productDetail_detail">
              <span class="productDetail_detail1">�⺻ ����</span>
              <span class="productDetail_detail2">1��Ʈ(10����)</span>
            </div>
            <div class="productDetail_detail">
              <span class="productDetail_detail1">����</span>
              <span class="productDetail_detail2"><%=price%> ��</span>
            </div>
            <div class="productDetail_detail">
              <span class="productDetail_detail1">��ۺ�</span>
              <span class="productDetail_detail2">3,000 ��</span>
            </div>
            <div class="productDetail_detail">
              <span class="productDetail_detail1">ĸ�� ����</span>
              <span class="productDetail_detail2">
                <select name=capType class="captype">
                  <option value="nesOrigin">�׽������� ��������</option>
                  <option value="nesVeryuo">�׽������� �����</option>
                  <option value="dolce">��ü������</option>
                  <option value="illy">�ϸ�</option>
                  <option value="kanu">ī��</option>
                  <option value="keurig">ť����</option>
                </select>
              </span>
            </div>
            
            <div class="productDetail_detail">
              <span class="productDetail_detail1">���� ����</span>
              <span class="length">
                <button id="decrement" onclick="stepper(this)"> - </button>
                  <input name="qty" type="number" min="1" max="20" step="1" value="1" id="my-input" readonly>
                <button id="increment" onclick="stepper(this)"> + </button>
              </span>
            </div>
            <div class="productDetail_detail">
              <span class="productDetail_detail1_explain"><%=detail %></span>
            </div>
            <div class="btns">
             <a href="inWish.jsp?prdNo=<%=prdNo%>" class="btn1"> ���ø���Ʈ�� ���</a>
              <a href="#a" class="btn2" onclick="checkSelectCoffeeValue()">��ٱ��Ͽ� ���</a>
            </div>
          </div>
          </form>
        </form>
      </div>
    </div> 
		
		<!-- ��ǰ �� �Ұ� ���� -->
		<div class="goods_detail_detail">
    <img src="../../images/<%=ctgType%>.png">
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
      <%
			}catch(Exception e){
			out.println(e);
		}
		%>
	<!-- ��ũ��Ʈ -->	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="../../JS/navEvent.js"></script>
	<script src="../../JS/thumbEvent.js"></script>
	<script src="../../JS/numEvent.js"></script>
	<script>
	function checkSelectCoffeeValue(){
		selectCapsule.submit();
	}
	</script>
</body>
</html>
