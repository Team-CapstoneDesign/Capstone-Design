<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/mypage.css">
    <link hrefn="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

</head>

<body>
       <%
        String id = (String) session.getAttribute("sid");
        if (id == null) {
    %>
        <script>
            alert("로그인이 필요한 서비스입니다!");
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
                        <span class="blind">두잔</span>
                    </h1>
                </a>
                <div class="topmenuWrap">
                    <ul class="topmenu">
						<li><a href="./goods/custome.jsp">캡슐 커스텀</a></li>
						<li><a>두잔 캡슐</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="./goods/viewProduct.jsp?ctgType=season">시즌한정</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=signature">시그니처</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=blending">블렌딩</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=original">오리지널</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=decaffeine">디카페인</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=beverage">베버리지
											/ 논커피</a></li>
								</ul>
							</div></li>
						<li><a>커피 이야기</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="./review/review_list.jsp">캡슐 조합 리뷰</a></li>
									<li><a href="./sub/coffee_bean.jsp">원두소개</a></li>
									<li><a href="./sub/coffee_recipe.jsp">커피 응용 레시피</a></li>
								</ul>
							</div></li>
						<li><a>두잔 이야기</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="./sub/brand_intro.jsp">두 잔의 여유</a></li>
									<li><a href="./sub/brand_recycle.jsp">두 잔의 환경가치</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
				<div class="nav_top">
					<%
						if (id == null) {
					%>
					<span class="quick_menu"><a href="./member/login.jsp">로그인</a></span>
					<span class="quick_menu"><a href="./member/insertMember.jsp">회원가입</a></span> <span
						class="quick_menu"><a href="">고객센터</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="./member/mainlogout.jsp">로그아웃</a></span>
					<span class="quick_menu"><a href="mypage.jsp">마이페이지</a></span> <span
						class="quick_menu"><a href="./cart/showcart.jsp">고객센터</a></span>
					<%
						}
					%>
				</div>
			</div>
		</div>


        <div class="mypage_wrap">
            <div class="Layout_container__2ryFm">
			<%
			

		 String DB_URL="jdbc:mysql://localhost:3306/dojan";  
 	     String DB_ID="multi";  
  		 String DB_PASSWORD="abcd";
 	 
		 Class.forName("org.gjt.mm.mysql.Driver"); 
 		 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
	  
		 request.setCharacterEncoding("euc-kr");

		 String ctNo = session.getId();
	
		 String jsql = "select * from member where memId = ?";
		 PreparedStatement pstmt = con.prepareStatement(jsql);
		 pstmt.setString(1, id);

		 ResultSet rs = pstmt.executeQuery();
		 rs.next(); 
         String name = rs.getString("memName");



         String jsql2 = "SELECT COUNT(ordRec) AS ordRecCount, COUNT(*) AS totalColumns FROM orderinfo WHERE memId = ?";
         PreparedStatement pstmt2 = con.prepareStatement(jsql2);
         pstmt2.setString(1, id);

         ResultSet rs2 = pstmt2.executeQuery();
         rs2.next();

         int recCount = rs2.getInt("ordRecCount");
		 int totalOrd = rs2.getInt("totalColumns");



         String jsql3 = " SELECT COUNT(*) AS rowCount FROM wish WHERE ctNo = ?";
         PreparedStatement pstmt3 = con.prepareStatement(jsql3);
         pstmt3.setString(1, ctNo);

         ResultSet rs3 = pstmt3.executeQuery();
         rs3.next();
         
		 int wishCount = rs3.getInt("rowCount");


		 String jsql4 = "SELECT o.ordDate, g.prdName, g.prdPrice2, p.ordQty, p.prdNo " +
                        "FROM orderinfo o " +
                        "JOIN orderproduct p ON o.ordNo = p.ordNo " +
                        "JOIN goods g ON p.prdNo = g.prdNo " +
                        "WHERE o.memId = ?";
    
   
         PreparedStatement pstmt4 = con.prepareStatement(jsql4);
         pstmt4.setString(1, id);
    
         ResultSet rs4 = pstmt4.executeQuery();

         
		 String jsql5 = "select * from wish where ctNo = ?";
		 PreparedStatement pstmt5 = con.prepareStatement(jsql5);
		 pstmt5.setString(1, ctNo);

		 ResultSet rs5 = pstmt5.executeQuery();
    

		 %>

               <div class="profile">
                두 잔의 여유를 즐기는
                <%= name%>
                님, <br>
                반갑습니다!<br><br>
                </div>
                <a href="memberSetting.jsp"><button class="ProfileSection_btn_setting__vsvWM N=myh.set">내 정보 관리</button></a>


                <div class="CardSection_card_section__yIeTK CardSection_my_menu__JaXF2" data-cy="card_section">
                    <div class="SubmenuSection_menu_wrap__viS3H">
                        <div class="SubmenuSection_my_menu_top__5E47e" data-cy="submenu_top_section"
                            data-menu-length="4">
                            <a class="SubmenuSection_btn_item__SRyp_ N=myh.order" data-cy="submenu_link"
                                href="">
                                <div class="SubmenuSection_icon_area__dJ4Hu">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="none"
                                        class="SubmenuSection_svg_icon__n5gPQ" data-cy="submenu_icon">
                                        <path stroke="#121212" stroke-width="1.6"
                                            d="M6 5.7c0-.644.471-1.167 1.053-1.167h17.895c.58 0 1.052.523 1.052 1.167v21c0 .644-.471 1.167-1.052 1.167h-.412c-.436 0-.799-.306-1.085-.634a1.504 1.504 0 0 0-1.135-.533c-.484 0-.918.242-1.207.622-.223.292-.531.545-.898.545s-.676-.253-.898-.545c-.29-.38-.723-.622-1.208-.622-.484 0-.917.242-1.207.622-.222.292-.53.545-.898.545-.367 0-.676-.253-.898-.545-.29-.38-.723-.622-1.207-.622-.484 0-.918.242-1.207.622-.223.292-.532.545-.899.545s-.675-.253-.897-.545c-.29-.38-.723-.622-1.208-.622-.445 0-.848.204-1.135.533-.286.328-.65.634-1.085.634h-.411C6.47 27.867 6 27.344 6 26.7v-21Z"
                                            clip-rule="evenodd"></path>
                                        <path stroke="#121212" stroke-linecap="round" stroke-linejoin="round"
                                            stroke-width="1.6"
                                            d="m16 12.346-1.969 6.77h-.396l-2.31-6.77m4.675 0 1.969 6.77h.395l2.31-6.77M9.99 15.282h12.02">
                                        </path>
                                    </svg>
                                </div>
                                주문횟수<em class="SubmenuSection_number__JoIZ1 SubmenuSection_is_zero__vkCU_"><%=totalOrd%></em>
                            </a>
                            <a class="SubmenuSection_btn_item__SRyp_ N=myh.cart" data-cy="submenu_link"
                                href="">
                                <div class="SubmenuSection_icon_area__dJ4Hu">
                                    <img src="../images/heart_icon.png" class="new_icon">
                                </div>
                                위시리스트<em class="SubmenuSection_number__JoIZ1 SubmenuSection_is_zero__vkCU_"><%= wishCount%></em>
                            </a>
                            <a class="SubmenuSection_btn_item__SRyp_ N=myh.coupon" data-cy="submenu_link"
                                href="">
                                <div class="SubmenuSection_icon_area__dJ4Hu">
                                    <img src="../images/recycle_icon.png" class="new_icon2">
                                </div>
                                재활용<em class="SubmenuSection_number__JoIZ1"><%= recCount%></em>
                            </a>
                        </div>

                    </div>
                </div>
				<%  

					while (rs4.next()) {
         			String ordDate = rs4.getString("ordDate");
        			String prdName = rs4.getString("prdName");
        			int prdPrice2 = rs4.getInt("prdPrice2");
        			int ordQty = rs4.getInt("ordQty");
        			String prdNo = rs4.getString("prdNo");  
					
					int total = prdPrice2 * ordQty; 
					 
					String comtotal = String.format("%,d", total);

					
					%>
                <div class="CardSection_card_section__yIeTK" data-cy="card_section">

                 <div class="OrderDeliverySection_list_order__0upVF">  
				
                        <div class="RoundedWrapper__Wrapper-w9wnao-0 dzEqxt">  
                            <div class="WarrantyCard__CardWrapper-mj30e3-0 jlXZQ">
                                <div class="WarrantyCard__DescWrapper-mj30e3-1 doDmmI">
                                   <div class="WarrantyCard__ImageWrapper-mj30e3-2 jlrvfN"  style="
                                      background-image: url('../images/capdesign/<%=prdNo%>.png');
                                       background-size: contain;  background-repeat: no-repeat;  background-position: center;"></div> 
									<!-- 이미지 링크 -->
                                    <div class="WarrantyCard__WarrantyInfo-mj30e3-3 eybslm">
                                      <div class="WarrantyCard__DateWithWarrantyNumber-mj30e3-4 VDSvq">
									  <%= ordDate%>
                                        </div>
                                        <a href="/pledges/6869332">
										<span class="WarrantyCard__Title-mj30e3-5 cQXRRi"><%= prdName%></span></a>
                                        <ul class="RewardItems__Items-sc-6cegjp-0 glqfra">
                                            <li><span class="RewardItems__Title-sc-6cegjp-2 gkHbvS"><%= ordQty%> 개</span></li><span
                                                class="RewardItems__DateWrapper-sc-6cegjp-1 dqbKMS"><span><%= comtotal%> 원</span>
                                        </ul>
                                    </div>
                                </div>
                            </div>				
                        </div>
                    </div>

                </div>  
					<% } %>

                
                <div class="CardSection_card_section__yIeTK" data-cy="card_section">
                    <div class="CardSection_head_area__UjvOi">
                        <h2 class="CardSection_title__0vhx3 CardSection_skeleton__yZWur" data-cy="title">내 위시리스트</h2> 
                    </div>
                    <div class="ZzimProductsSection_zzim_items__JRX7_">
                        <div class="ZzimCategory_zzim_item__BuS_N">
                            <div class="ScrollableCommonProducts_flicking_wrap__qsVL0">
                                <div class="ScrollableCommonProducts_flicking_area__5pJ1G">
                           

					 <%  

					while (rs5.next()) {
                    
					String wishNo = rs5.getString("prdNo");
					String wishName = rs5.getString("prdName");
					String wishRoast = rs5.getString("prdRoasting");
					String wishPrice = rs5.getString("prdPrice");					
					
					%>
                                    <div
                                        class="ScrollableCommonProducts_product_item__4oBG_ ScrollableCommonProducts_skeleton__jysvq">
                                        <div class="link_item">
                                            <div class="ScrollableCommonProducts_thumb__l7PBq">
											<a href="../goods/viewProductDetail.jsp?prdNo=<%=wishNo%>"><img src="../images/capdesign/<%=wishNo%>.png"></a>
											</div>
                                            <div class="ScrollableCommonProducts_info_area__oZNC0">
                                                <div class="ScrollableCommonProducts_price__I2bI7"><%= wishName%></div>
                                                <div class="ScrollableCommonProducts_name__MTpce"><%= wishRoast%></div>
                                                <div class="ScrollableCommonProducts_info_label___0DSe"><%= wishPrice%> 원</div>
                                            </div>
                                        </div>
                                    </div>
                        <% } %>
                                  
									


                                   
                                    
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <footer>
            <div class="footer1">
                <ul>
                    <li><a href="">회사소개</a></li>
                    <li><a href="">이용약관</a></li>
                    <li><a href="">개인정보취급방침 </a></li>
                    <li><a href="">고객센터</a></li>
                </ul>
            </div>
            <div class="footer2">
                <div class="call_center">
                    <p class="footer_title">고객만족센터</p>
                    <p class="footer_text">
                        <span class="tell"><img src="../images/tell.png" alt=""></span><span
                            id="tell_number">02-456-789</span><br>
                        <span class="footer_bold">상담시간 </span>10:00 ~ 18:00<br>
                        <span class="footer_bold">문자상담 </span>카카오톡 플러스 친구 등록<br>
                        반품 안내는 해당 상품 페이지를 참고해주세요
                    </p>
                </div>

                <div class="company">
                    <p class="footer_title">회사 정보</p>
                    <p class="footer_text">
                        <span class="footer_bold">회사명</span>(주)두잔 / 두 잔의 여유<br>
                        <span class="footer_bold">대표</span>서민희<br>
                        <span class="footer_bold">대표전화</span>02-456-789<br>
                        <span class="footer_bold">주소</span>서울특별시 마포구<br>
                        <span class="footer_bold">이메일</span>alslalsl_06@naver.com<br>
                    </p>
                </div>

                <div class="delivery">
                    <p class="footer_title">배송안내</p>
                    <p class="footer_text">
                        CJ 대한통운(TEL 1588-4321)<br>
                        배송 상황은 택배사 홈페이지를 참조해주세요<br>
                        <a href="#">배송 상황 확인하기></a>
                    </p>
                </div>
            </div>
            <div class="footer3">
                <div class="shopping_menu">
                    <p class="footer_title">쇼핑 메뉴</p>
                    <p class="footer_text">
                        <a href="#" id="shopping_text">자주 묻는 질문</a><br>
                        <a href="#" id="shopping_text">문의 게시판</a>
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

</body>

</html>
