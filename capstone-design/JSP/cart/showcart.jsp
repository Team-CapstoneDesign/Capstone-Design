<%@ page contentType="text/html;charset=euc-kr"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>장바구니</title>

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
						<span class="blind">두잔</span>
					</h1>
					</a>
				<div class="topmenuWrap">
					<ul class="topmenu">
						<li><a href="./custome.jsp">캡슐 커스텀</a></li>
						<li><a>두잔 캡슐</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="../goods/viewProduct.jsp?ctgType=season">시즌한정</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=signature">시그니처</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=blending">블렌딩</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=original">오리지널</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=decaffeine">디카페인</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=beverage">베버리지
											/ 논커피</a></li>
								</ul>
							</div></li>
						<li><a>커피 이야기</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="../review/review_list.jsp">캡슐 조합 리뷰</a></li>
									<li><a href="../sub/coffee_bean.jsp">원두소개</a></li>
									<li><a href="../sub/coffee_recipe.jsp">커피 응용 레시피</a></li>
								</ul>
							</div></li>
						<li><a>두잔 이야기</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="../sub/brand_intro.jsp">두 잔의 여유</a></li>
									<li><a href="../sub/brand_recycle.jsp">두 잔의 환경가치</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<div class="nav_top">
					<%
						if (id == null) {
					%>
					<span class="quick_menu"><a href="../member/login.jsp">로그인</a></span> <span
						class="quick_menu"><a href="">회원가입</a></span> <span
						class="quick_menu"><a href="">고객센터</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="../member/mainlogout.jsp">로그아웃</a></span>
					<span class="quick_menu"><a href="../mypage.jsp">마이페이지</a></span> <span
						class="quick_menu"><a href="">고객센터</a></span>
					<%
						}
					%>
				</div>
			</div>
		</div>

		<!-- 컨텐츠 -->
		<div class="cart_container" name="cart_product">
			<!-- 네비게이션 헤더 -->
			<div class="sub_section1" name="sub_header">
				<div class="ctgTitle">
					장바구니
				</div>
				<div class="sub_headerTitle">
					<ul class="smap">
						<!-- 미니 네비게이션 -->
						<li><a href="index.html">home</a></li>
						<li>></li>
						<li class="en"><a href="index.html">장바구니</a></li>
					</ul>
				</div>
			</div>

			<div class="cart_content">
				<!-- 단계 진행도 -->
				<div class="stepper-wrapper">
					<div class="stepper-item completed">
						<div class="step-counter">1</div>
						<div class="step-name">장바구니</div>
					</div>
					<div class="stepper-item">
						<div class="step-counter">2</div>
						<div class="step-name">배송지 및 결제 정보 입력</div>
					</div>
					<div class="stepper-item">
						<div class="step-counter">3</div>
						<div class="step-name">주문 상세 내역 확인</div>
					</div>
					<div class="stepper-item">
						<div class="step-counter">4</div>
						<div class="step-name">주문 완료 및 확인</div>
					</div>
				</div>
			</div>

			<!-- 장바구니 상품목록 -->
			<div class="cartItem_content">
				<form name="cartItem" method="post" action="">
					<%
						try {
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

						if (!rs.next()) // 장바구니 내용없으면 굳이 비었다고 출력하는거보다 그냥 아무것도 없게 보이는것도 괜찮을거같음
						{
					%>
					  <table class="cartItem_list">
							<tr class="cartItem_header" alt="캡슐 종류 구분용">
								<th></th>
								<th></th>
								<th>판매가</th>
								<th>캡슐종류</th>
								<th>구매수량<br>
								<span>(10개 1세트 + 10캡슐)</span></th>
								<th>합계</th>
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


						int nomalT = 0;     // 완제품 총합산가격
						int customT = 0;   //  커스텀 총합산가격
						%>

						<div>
							<a href="deleteAllcart.jsp"><input type="button"
								class="deleteAllBtn" value="전체 상품 삭제"></a>
						</div>

						<table class="cartItem_list">
							<tr class="cartItem_header" alt="캡슐 종류 구분용">
								<th>캡슐</th>
								<th>캡슐명</th>
								<th>판매가</th>
								<th>캡슐종류</th>
								<th>구매수량<br>
								<span>(10개 1세트 + 10캡슐)</span></th>
								<th>합계</th>
								<th></th>
							</tr>

							<%
								
								while (rs2.next()) {

								int Nomaltotal = 0;       //  완제품 가격 개별 출력을 위해 반복마다 변수0선언
								
								String prdNo = rs2.getString("prdNo"); //  cart에서 상품번호 추출
								int ctQty = rs2.getInt("ctQty"); //  cart에서 주문수량 추출 
								String capType = rs2.getString("capType"); //  cart에서 캡슐타입 추출

								 String capTypeName = "";
                             switch (capType) {
								 case "nesOrigin":
                                 capTypeName = "네스프레소 오리지널";
                                 break;

                                 case "nesVeryuo":
                                 capTypeName = "네스프레소 버츄오";
                                 break;

                                 case "dolce":
                                 capTypeName = "돌체구스토";
                                 break;

                                 case "illy":
                                 capTypeName = "일리";
                                 break;

                                 case "kanu":
                                 capTypeName = "카누";
                                 break;

                                 case "keurig":
                                 capTypeName = "큐리그";
                                 break;

                                 default:
                                 capTypeName = "알 수 없는 캡슐 타입";
                                 break;
        }

								String jsql3 = "select prdName, prdPrice, prdPrice2 from goods where prdNo = ?";
								PreparedStatement pstmt3 = con.prepareStatement(jsql3);
								pstmt3.setString(1, prdNo);

								ResultSet rs3 = pstmt3.executeQuery();
								rs3.next();

								String prdName = rs3.getString("prdName"); //   상품명 추출
								String prdPrice = rs3.getString("prdPrice"); //  완제품 단가 문자형 추출
								int prdPrice2 = rs3.getInt("prdPrice2"); //  완제품 단가 숫자형 추출  합계산을 위해

								int NomalAmount = prdPrice2 * ctQty;
								Nomaltotal = Nomaltotal + NomalAmount;
								nomalT = nomalT +  NomalAmount;

								String comNomaltotal = String.format("%,d", Nomaltotal);


							%>
							<tr class="cartItem_product" alt="상세 상품">
								<td><img src="../../images/capdesign/<%=prdNo%>.png"></td>
								<td><%=prdName%></td>
								<td><%=prdPrice%> 원</td>
								<td><%=capTypeName%></td>
								<td><input type="hidden" value="<%=ctQty%>"><%=ctQty%>세트</td>
								<td><%=comNomaltotal%> 원</td>
								<td><a href="deletecart.jsp?prdNo=<%=prdNo%>"><input
										type="button" class="deleteBtn" value="삭제"></a></td>
							</tr>

						

							<% } // (rs.2) while의 끝 %>


							<tr class="cartItem_header" alt="캡슐 종류 구분용">
								<th>커스텀 캡슐</th>
								<th>커스텀 캡슐명</th>
								<th>판매가</th>
								<th>캡슐종류</th>
								<th>구매수량<br>
								<span>(10개 1세트 + 10캡슐)</span></th>
								<th>합계</th>
								<th></th>
							</tr>

			<%  
								while (rs4.next()) { 

				                int Cstotal = 0;      // 커스텀 가격 개별 출력위해 반복때마다 변수 0선언
				                
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

							<tr class="cartItem_product" alt="상세 상품">
								<td><img src="../../images/capdesign/cs_img.png"></td>
								<td><%= name%></td>
								<td><%= price%> 원</td>
								<td><%= cap%></td>
								<td><input type="hidden" value="<%=csQty%>"><%=csQty%>세트</td>
								<td><%= comCstotal%> 원</td>
								<td><a href="Csdeletecart.jsp?csname=<%= name%>">
								<input type="button" class="deleteBtn" value="삭제"></a></td>
							</tr>
 <%  }  // (rs.4) while문의 끝  %>
						</table>

                    <%    
						
                        int shippingFee = 0;                // 배송비

					    int productTotal = (nomalT + customT);    //  완제품 + 커스텀 총가격 

						 // 총 주문 금액이 50000원을 넘는 경우 배송비는 없음
                        if (productTotal > 50000) {
                            shippingFee = 0;
                      } else {
                            shippingFee = 3000;
                      }

					    int total = productTotal + shippingFee;

						String shippingFeeText = (shippingFee == 0) ? "무료" : "3,000 원";

						%>
						<div class="cartTotal">
							<div>
								<table class="cartTotal_box">
									<tr class="cartTotal_box_header">
										<th><span class="cartTotal_itemtotal">상품 금액</span></th>
										<th><span class="cartTotal_delivery">배송비</span></th>
										<th><span class="cartTotal_total">총 주문 금액</span></th>
									</tr>
									<tr class="cartTotal_box_number">
										<th><span><%= String.format("%,d", productTotal) %> </span>원</th>
										<th><span><%= shippingFeeText %></span></th>
										<th><span class="realTotal"><%= String.format("%,d", total) %> </span>원</th>
									</tr>
								</table>
							</div>
<% }  %>


							<div>
								<a href="order1.jsp"><input type="button" class="orderButton1" value="주문하기"></a>
							</div>
						</div>
						</form>
						</div>

						<%
							} catch (Exception e) {
						out.println(e);
						}
						%>
						<!-- 푸터 -->
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
										<span class="tell"><img src="../../images/tell.png"
											alt=""></span><span id="tell_number">02-456-789</span><br>
										<span class="footer_bold">상담시간 </span>10:00 ~ 18:00<br> <span
											class="footer_bold">문자상담 </span>카카오톡 플러스 친구 등록<br> 반품
										안내는 해당 상품 페이지를 참고해주세요
									</p>
								</div>

								<div class="company">
									<p class="footer_title">회사 정보</p>
									<p class="footer_text">
										<span class="footer_bold">회사명</span>(주)두잔 / 두 잔의 여유<br> <span
											class="footer_bold">대표</span>서민희<br> <span
											class="footer_bold">대표전화</span>02-456-789<br> <span
											class="footer_bold">주소</span>서울특별시 마포구<br> <span
											class="footer_bold">이메일</span>alslalsl_06@naver.com<br>
									</p>
								</div>

								<div class="delivery">
									<p class="footer_title">배송안내</p>
									<p class="footer_text">
										CJ 대한통운(TEL 1588-4321)<br> 배송 상황은 택배사 홈페이지를 참조해주세요<br>
										<a href="#">배송 상황 확인하기></a>
									</p>
								</div>
							</div>
							<div class="footer3">
								<div class="shopping_menu">
									<p class="footer_title">쇼핑 메뉴</p>
									<p class="footer_text">
										<a href="#" id="shopping_text">자주 묻는 질문</a><br> <a
											href="#" id="shopping_text">문의 게시판</a>
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
						<script src="../../JS/numEvent.js"></script>
</body>
</html>