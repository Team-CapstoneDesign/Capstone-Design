<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="EUC-KR">
<title>리뷰 작성하기</title>
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/review.css">

<script language="javascript" src="../dojan_js_package.js">
	</script>

</head>
<%
    String id = (String) session.getAttribute("sid");

    if (id == null){
%> 
        <script>
            alert("로그인이 필요합니다!");
            location.href="../member/login.jsp";
        </script>
<%
    }
   else {
%>
	
<body>	
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
						<li><a href="../goods/custome.jsp">캡슐 커스텀</a></li>
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
									<li><a href="./review_list.jsp">캡슐 조합 리뷰</a></li>
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
							</div></li>
					</ul>
				</div>
				<div class="nav_top">
					<%
						if (id == null) {
					%>
					<span class="quick_menu"><a href="../member/login.jsp">로그인</a></span>
					<span class="quick_menu"><a href="../member/insertMember.jsp">회원가입</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="../member/mainlogout.jsp">로그아웃</a></span>
					<span class="quick_menu"><a href="../mypage.jsp">마이페이지</a></span> <span
						class="quick_menu"><a href="../cart/showcart.jsp">장바구니</a></span>
					<%
						}
					%>
				</div>
			</div>
		</div>
		
		<!-- 컨텐츠 -->
		<div class="sub_container" name="sub_product">
			<!-- 네비게이션 헤더 -->
			<div class="sub_section1" name="sub_header">
				<div class="ctgTitle">
					캡슐 조합 리뷰 <br> <span>모두의 캡슐 커스텀 조합법을 확인해보세요! </span>
				</div>
				<div class="sub_headerTitle">
					<ul class="smap">
						<!-- 미니 네비게이션 -->
						<li><a href="index.html">home</a></li>
						<li>></li>
						<li class="en"><a href="index.html">커피 이야기</a></li>
						<li>></li>
						<li><a href="index.html" class="this">캡슐 조합 리뷰</a></li>
					</ul>
				</div>
			</div>
			</div><br>
			
			<!-- 리뷰 작성하기 -->
			<div class="reviewPage">
				<div class="reviewPage_title">
					캡슐 커스텀은 어떠셨나요? 리뷰를 작성해주세요!
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

						String key = request.getParameter("ordNo");

						String jsql2 = "SELECT ordRoast, ordOrigin, ordBlend FROM ordercustom WHERE ordNo = ?";                                
						//  memID이용해서 ordercustom에 저장된 베이스, 블렌드 원두, 로스팅단계 가져옴
						PreparedStatement pstmt2 = con.prepareStatement(jsql2);
						pstmt2.setString(1, key);
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
							<th>작성자</th>
							<td><input type="hidden" value="<%=userName%>" name="rwName"><%=userName%></td>
						</tr>
						<tr>
							<th>리뷰 제목</th>
							<td><input type="text" value="제목을 입력해주세요." name="rwTitle"></td>
						</tr>
						<tr>
							<th>베이스 원두</th>
							<td><input type="hidden" value="<%=ordOrigin%>" name="rwOrigin"><span><%=ordOrigin%></span></td>
						</tr>
						<tr>
							<th>블렌드 원두</th>
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
							<th>로스팅 단계</th>
							<td><input type="hidden" value="<%=ordRoast%>" name="rwRoast"><span><%=ordRoast%>단계</span></td>
						</tr>
						<tr>
							<th>리뷰 내용</th>
							<td><textarea name="rwContent">내용을 입력해주세요.</textarea></td>
						</tr>
					</table>
						
						<div class="uploadRV"><input type="button" class="uploadBtn" value="작성 완료" onclick="reviewOK()"></div>
						
					</div>
				</form>
			</div>

		</div>
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
						<span class="tell"><img src="../../images/tell.png" alt=""></span><span
							id="tell_number">02-456-789</span><br> <span
							class="footer_bold">상담시간 </span>10:00 ~ 18:00<br> <span
							class="footer_bold">문자상담 </span>카카오톡 플러스 친구 등록<br> 반품 안내는 해당
						상품 페이지를 참고해주세요
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
						CJ 대한통운(TEL 1588-4321)<br> 배송 상황은 택배사 홈페이지를 참조해주세요<br> <a
							href="#">배송 상황 확인하기></a>
					</p>
				</div>
			</div>
			<div class="footer3">
				<div class="shopping_menu">
					<p class="footer_title">쇼핑 메뉴</p>
					<p class="footer_text">
						<a href="#" id="shopping_text">자주 묻는 질문</a><br> <a href="#"
							id="shopping_text">문의 게시판</a>
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
	   <% } %>
</html>
