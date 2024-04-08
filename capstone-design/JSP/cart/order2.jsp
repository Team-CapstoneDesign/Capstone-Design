<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<html>
<head>

  <title>�ֹ� �� Ȯ��</title>
  <link rel="stylesheet" href="../../css/style.css">
  <link rel="stylesheet" href="../../css/cart.css">

</head>

<body>
	<%
	String id = (String) session.getAttribute("sid");
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
					<span class="quick_menu"><a href="../member/mainlogout.jsp">�α׾ƿ�</a></span>
					<span class="quick_menu"><a href="../mypage.jsp">����������</a></span> <span
						class="quick_menu"><a href="">������</a></span>
					<%
						}
					%>
				</div>
			</div>
		</div>

    <!-- ������ -->
    <div class="cart_container" name="cart_product">
      <!-- �׺���̼� ��� -->
      <div class="sub_section1" name="sub_header">
				<div class="ctgTitle">
					�ֹ�/����
				</div>
				<div class="sub_headerTitle">
					<ul class="smap">
						<!-- �̴� �׺���̼� -->
						<li><a href="index.html">home</a></li>
						<li>></li>
						<li class="en"><a href="index.html">��ٱ���</a></li>
						<li>></li>
						<li><a href="index.html" class="this">�ֹ�/����</a></li>
					</ul>
				</div>
			</div>

      <div class="cart_content">
        <!-- �ܰ� ���൵ -->
        <div class="stepper-wrapper">
          <div class="stepper-item completed">
            <div class="step-counter">1</div>
            <div class="step-name">��ٱ���</div>
          </div>
          <div class="stepper-item completed">
            <div class="step-counter">2</div>
            <div class="step-name">����� �� ���� ���� �Է�</div>
          </div>
          <div class="stepper-item completed">
            <div class="step-counter">3</div>
            <div class="step-name">�ֹ� �� ���� Ȯ��</div>
          </div>
          <div class="stepper-item">
            <div class="step-counter">4</div>
            <div class="step-name">�ֹ� �Ϸ� �� Ȯ��</div>
          </div>
        </div>
      </div>
		
	<!-- ��ٱ��� ��ǰ ����Ʈ -->
		
     <div class="cartItem_content">
      <form name="everyCartInfo" method="post" action="orderOK.jsp">
					<%
						String DB_URL = "jdbc:mysql://localhost:3306/dojan";
						String DB_ID = "multi";
						String DB_PASSWORD = "abcd";

						Class.forName("org.gjt.mm.mysql.Driver");
						Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

						String ctNo = session.getId();

						String jsql = "select * from cart where ctNo = ?";
						PreparedStatement pstmt = con.prepareStatement(jsql);
						pstmt.setString(1, ctNo);

						ResultSet rs = pstmt.executeQuery();


						String myid = (String)session.getAttribute("sid");  

	                    String jsql5 = "select memName, memTel, memEmail from member where memId = ?";
		                PreparedStatement pstmt5 = con.prepareStatement(jsql5);
		                pstmt5.setString(1,myid);

		                ResultSet rs5 = pstmt5.executeQuery();
		                rs5.next();

		                String  Mname = rs5.getString("memName");
		                String  Mtel = rs5.getString("memTel");
		                String  Memail = rs5.getString("memEmail");


						request.setCharacterEncoding("euc-kr");


                        String oName = request.getParameter("name");

						String otel1 = request.getParameter("tel1");
						String otel2 = request.getParameter("tel2");
						String otel3 = request.getParameter("tel3");
						String otel = otel1 + "-" + otel2 + "-" + otel3 ;
						
						String oZipno = request.getParameter("zipNo");
						String oAddress1 = request.getParameter("address");
						String oAddress2 = request.getParameter("addressdetail");
						String oAddr = oAddress1 + "  " + oAddress2 ;
						String oAddrplus = request.getParameter("addrplus");

						String pay = request.getParameter("payment");

						if (!rs.next()) // ��ٱ��� ��������� ���� ����ٰ� ����ϴ°ź��� �׳� �ƹ��͵� ���� ���̴°͵� �������Ű���
						{
					%>
					  <table class="cartItem_list">
							<tr class="cartItem_header" alt="ĸ�� ���� ���п�">
								<th></th>
								<th></th>
								<th>�ǸŰ�</th>
								<th>ĸ������</th>
								<th>���ż���<br>
								<span>(10�� 1��Ʈ + 10ĸ��)</span></th>
								<th>�հ�</th>
								<th></th>
							</tr>
						</table>
						<%
							} else {
						%>

						<%
						String jsql2 = "select prdNo, ctQty, capType from cart where ctNo = ?";
						PreparedStatement pstmt2 = con.prepareStatement(jsql2);
						pstmt2.setString(1, ctNo);

						ResultSet rs2 = pstmt2.executeQuery();


						String jsql4 = "select csname, price, price2, machine, csQty from cscart where ctNo =?";
						PreparedStatement pstmt4 = con.prepareStatement(jsql4);
						pstmt4.setString(1, ctNo);

						ResultSet rs4 = pstmt4.executeQuery();


						int nomalT = 0;     // ����ǰ ���ջ갡��
						int customT = 0;   //  Ŀ���� ���ջ갡��
						%>


						<table class="cartItem_list">
							<tr class="cartItem_header" alt="ĸ�� ���� ���п�">
								<th>ĸ��</th>
								<th>ĸ����</th>
								<th>�ǸŰ�</th>
								<th>ĸ������</th>
								<th>���ż���<br>
								<span>(10�� 1��Ʈ + 10ĸ��)</span></th>
								<th>�հ�</th>
								<th></th>
							</tr>

							<%
								
								while (rs2.next()) {

								int Nomaltotal = 0;       //  ����ǰ ���� ���� ����� ���� �ݺ����� ����0����
								
								String prdNo = rs2.getString("prdNo"); //  cart���� ��ǰ��ȣ ����
								int ctQty = rs2.getInt("ctQty"); //  cart���� �ֹ����� ���� 
								String capType = rs2.getString("capType"); //  cart���� ĸ��Ÿ�� ����

								 String capTypeName = "";
                             switch (capType) {
								 case "nesOrigin":
                                 capTypeName = "�׽������� ��������";
                                 break;

                                 case "nesVeryuo":
                                 capTypeName = "�׽������� �����";
                                 break;

                                 case "dolce":
                                 capTypeName = "��ü������";
                                 break;

                                 case "illy":
                                 capTypeName = "�ϸ�";
                                 break;

                                 case "kanu":
                                 capTypeName = "ī��";
                                 break;

                                 case "keurig":
                                 capTypeName = "ť����";
                                 break;

                                 default:
                                 capTypeName = "�� �� ���� ĸ�� Ÿ��";
                                 break;
        }

								String jsql3 = "select prdName, prdPrice, prdPrice2 from goods where prdNo = ?";
								PreparedStatement pstmt3 = con.prepareStatement(jsql3);
								pstmt3.setString(1, prdNo);

								ResultSet rs3 = pstmt3.executeQuery();
								rs3.next();

								String prdName = rs3.getString("prdName"); //   ��ǰ�� ����
								String prdPrice = rs3.getString("prdPrice"); //  ����ǰ �ܰ� ������ ����
								int prdPrice2 = rs3.getInt("prdPrice2"); //  ����ǰ �ܰ� ������ ����  �հ���� ����

								int NomalAmount = prdPrice2 * ctQty;
								Nomaltotal = Nomaltotal + NomalAmount;
								nomalT = nomalT +  NomalAmount;

								String comNomaltotal = String.format("%,d", Nomaltotal);


							%>
							<tr class="cartItem_product" alt="�� ��ǰ">
								<td><img src="../../images/capdesign/<%=prdNo%>.png"></td>
								<td><%=prdName%></td>
								<td><%=prdPrice%> ��</td>
								<td><%=capTypeName%></td>
								<td><input type="hidden" value="<%=ctQty%>"><%=ctQty%>��Ʈ</td>
								<td><%=comNomaltotal%> ��</td>
								<td></td>
							</tr>

						

							<% } // (rs.2) while�� �� %>


							<tr class="cartItem_header" alt="ĸ�� ���� ���п�">
								<th>Ŀ���� ĸ��</th>
								<th>Ŀ���� ĸ����</th>
								<th>�ǸŰ�</th>
								<th>ĸ������</th>
								<th>���ż���<br>
								<span>(10�� 1��Ʈ + 10ĸ��)</span></th>
								<th>�հ�</th>
								<th></th>
							</tr>

			<%  
								while (rs4.next()) { 

				                int Cstotal = 0;      // Ŀ���� ���� ���� ������� �ݺ������� ���� 0����
				                
								String name = rs4.getString("csname");
								String price = rs4.getString("price");
								int price2  = rs4.getInt("price2");
								String cap = rs4.getString("machine");
								int csQty = rs4.getInt("csQty");	

								int CsAmount = price2 * csQty;
								Cstotal = Cstotal + CsAmount;
								customT = customT + CsAmount;
								
								String comCstotal = String.format("%,d", Cstotal);
				%>

							<tr class="cartItem_product" alt="�� ��ǰ">
								<td><img src="../../images/capdesign/cs_img.png"></td>
								<td><%= name%></td>
								<td><%= price%> ��</td>
								<td><%= cap%></td>
								<td><input type="hidden" name="qty" value="<%=csQty%>"><%=csQty%>��Ʈ</td>
								<td><%= comCstotal%> ��</td>
								<td></td>
							</tr>
 <%  }  // (rs.4) while���� ��  %>
          </table>

		 
        </div>

        <!-- ĸ�� ��Ȱ�� ȸ�� ��û ���� -->
        <div class="recycleCap">
          <label for="recycle_rq" class="recycle_comment"> 
            <% 
             String rec = request.getParameter("recycle");
             if ("recycle".equals(rec)) {
    %>
		     <img src="../../images/recycle/recycle_rq.png">
             ĸ�� ��Ȱ�� �� ���� ��û �Ϸ�.
    <% 
           } else {
    %>       
	         <img src="../../images/recycle/recycle_bag.png">
             ĸ�� ��Ȱ�� �� ���� �̽�û.
    <% 
      } 
    %>
		<input type="hidden" name="recycle" value="<%=rec%>">
          </label>
        </div>
        <!-- �ֹ� / ���� ���� �Է� -->
        <div class="cart_Info">
          <div class="cart_section5">
				  <table>
					<tr class="cart_orderInfo">
					  <th><span>�ֹ��� ����(�� ���� �״�� �ҷ�����. ���� �Ұ�.)</span></th>
					</tr>
					<tr>
					  <th>�ֹ���<br><span class="myinfo2"><%=Mname%></span></th>
					  <th>��ȣ<br><span class="myinfo2"><%=Mtel%></span></th>
					  <th>�̸���<br><span class="myinfo2"><%=Memail%></span></th>
					</tr>
					<tr class="cart_addrInfo">
					  <th><span>����� ����(���� �ܰ� ���� �״�� �ҷ�����. ���� �Ұ�.)</span></th>
					</tr>
					<tr>
					  <th>�޴� ���<br>
						<span class="myinfo2"><input type="hidden" name="oName" value="<%=oName%>"><%=oName%></span>
					  </th>
					  <th>��ȣ<br>
						<span class="myinfo2"><input type="hidden" name="otel" value="<%=otel%>"><%=otel%></span>
					  </th>
					  <th>�ּ�<br>
					    <span class="myinfo2"><input type="hidden" name="oZipno" value="<%=oZipno%>"> <%=oZipno%> (�����ȣ)</span>
						<br>
						<span class="myinfo2"><input type="hidden" name="oAddress1" value="<%=oAddress1%>"> <%=oAddress1%></span>
						<span class="myinfo2"><input type="hidden" name="oAddrplus" value="<%=oAddrplus%>"> <%=oAddrplus%></span><br>
						<span class="myinfo2"><input type="hidden" name="oAddress2" value="<%=oAddress2%>"> <%=oAddress2%></span>
					  </th>
					</tr>
					<tr class="cart_payInfo">
					  	<th><span>���� ����</span></th>
					</tr>
					<tr>
						<th><span class="myinfo2_last"><input type="hidden" name="payment" value="<%= pay%>"><%= pay%></span></th>
					</tr>
				  </table>
			</div>
        </div>
<%    
						
                        int shippingFee = 0;                // ��ۺ�

					    int productTotal = (nomalT + customT);    //  ����ǰ + Ŀ���� �Ѱ��� 

						 // �� �ֹ� �ݾ��� 50000���� �Ѵ� ��� ��ۺ�� ����
                        if (productTotal > 50000) {
                            shippingFee = 0;
                      } else {
                            shippingFee = 3000;
                      }

					    int total = productTotal + shippingFee;

						String shippingFeeText = (shippingFee == 0) ? "����" : "3,000 ��";

						%>
        <div class="cartTotal_final">
          <div>
            <table class="cartTotal_box_final">
              <tr class="cartTotal_box_header_final">
                <th><span class="cartTotal_itemtotal">��ǰ �ݾ�</span></th>
                <th><span class="cartTotal_delivery">��ۺ�</span></th>
                <th><span class="cartTotal_total">�� �ֹ� �ݾ�</span></th>
              </tr>
              <tr class="cartTotal_box_number_final">
                <th><span><%= String.format("%,d", productTotal) %> </span>��</th>
				<th><span><%= shippingFeeText %></span></th>
				<th><span class="realTotal"><input type="hidden" name="price" value="<%= total%>"><%= String.format("%,d", total) %> </span>��</th>
              </tr>
            </table>
          </div>
        </div>
 <% }  %>
        <div class="cart_Info_button">
          <input type="button" class="btn_backPage" value="<  ���� �Է����� ���ư���">
         <input type="button" class="btn_nextPage" value="�ֹ��ϱ�  >" onclick="orderOK()"></a>
        </div>

      </form>

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
                id="tell_number">02-456-789</span><br> <span class="footer_bold">���ð� </span>10:00 ~ 18:00<br> <span
                class="footer_bold">���ڻ�� </span>īī���� �÷��� ģ�� ���<br> ��ǰ �ȳ��� �ش�
              ��ǰ �������� �������ּ���
            </p>
          </div>

          <div class="company">
            <p class="footer_title">ȸ�� ����</p>
            <p class="footer_text">
              <span class="footer_bold">ȸ���</span>(��)���� / �� ���� ����<br> <span class="footer_bold">��ǥ</span>������<br> <span
                class="footer_bold">��ǥ��ȭ</span>02-456-789<br> <span class="footer_bold">�ּ�</span>����Ư���� ������<br> <span
                class="footer_bold">�̸���</span>alslalsl_06@naver.com<br>
            </p>
          </div>

          <div class="delivery">
            <p class="footer_title">��۾ȳ�</p>
            <p class="footer_text">
              CJ �������(TEL 1588-4321)<br> ��� ��Ȳ�� �ù�� Ȩ�������� �������ּ���<br> <a href="#">��� ��Ȳ Ȯ���ϱ�></a>
            </p>
          </div>
        </div>
        <div class="footer3">
          <div class="shopping_menu">
            <p class="footer_title">���� �޴�</p>
            <p class="footer_text">
              <a href="#" id="shopping_text">���� ���� ����</a><br> <a href="#" id="shopping_text">���� �Խ���</a>
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
    <script language="javascript" src="../dojan_js_package.js"></script>
	<script src="../../JS/navEvent.js"></script>

</body>

</html>