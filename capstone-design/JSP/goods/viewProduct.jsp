<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>두잔 상품 조회</title>

<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/sub02.css">

</head>
<body>
	<%
		String id = (String) session.getAttribute("sid");

	try {
		String DB_URL = "jdbc:mysql://localhost:3306/dojan";
		String DB_ID = "multi";
		String DB_PASSWORD = "abcd";

		Class.forName("org.gjt.mm.mysql.Driver");
		Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

		request.setCharacterEncoding("euc-kr");

		String ctgType = request.getParameter("ctgType");

		String category_name;

		if (ctgType.equals("season"))
			category_name = "시즌한정 캡슐";
		else if (ctgType.equals("signature"))
			category_name = "시그니처 캡슐";
		else if (ctgType.equals("blending"))
			category_name = "블렌딩 캡슐";
		else if (ctgType.equals("original"))
			category_name = "오리지널 캡슐";
		else if (ctgType.equals("decaffeine"))
			category_name = "디카페인 캡슐";
		else if (ctgType.equals("beverage"))
			category_name = "베버리지 캡슐 / 논커피";
		else
			category_name = "선물 패키지";

		String jsql = "select * from goods where ctgType = ?";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setString(1, ctgType);
		ResultSet rs = pstmt.executeQuery();
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
									<li><a href="./viewProduct.jsp?ctgType=season">시즌한정</a></li>
									<li><a href="./viewProduct.jsp?ctgType=signature">시그니처</a></li>
									<li><a href="./viewProduct.jsp?ctgType=blending">블렌딩</a></li>
									<li><a href="./viewProduct.jsp?ctgType=original">오리지널</a></li>
									<li><a href="./viewProduct.jsp?ctgType=decaffeine">디카페인</a></li>
									<li><a href="./viewProduct.jsp?ctgType=beverage">베버리지
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
					<span class="quick_menu"><a href="../member/login.jsp">로그인</a></span>
					<span class="quick_menu"><a href="">회원가입</a></span> <span
						class="quick_menu"><a href="">고객센터</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="../member/logout.jsp">로그아웃</a></span>
					<span class="quick_menu"><a href="../mypage.jsp">마이페이지</a></span> <span
						class="quick_menu"><a href="">고객센터</a></span>
					<%
						}
					%>
				</div>
			</div>
		</div>

		<div class="sub_container" name="sub_product">

			<div class="sub_section1" name="sub_header">
				<div class="ctgTitle">
					두잔에서만 만날 수 있는 특별한 캡슐<br> <span>일상 속 달콤한 여유를 즐기세요 </span>
				</div>
				<div class="sub_headerTitle">
					<ul class="smap">
						<!-- 미니 네비게이션 -->
						<li><a href="index.html">home</a></li>
						<li>></li>
						<li class="en"><a href="index.html">두잔 캡슐</a></li>
						<li>></li>
						<li><a href="index.html" class="this"><%=category_name%></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="product_result_wrap product_result_wrap01"
			style="display: block;">

			<div class="product_view_tab_wrap">
				<div class="product_list">
					<!-- 컨텐츠 나오는 부분 -->
					<ul class="">
						<%
							while (rs.next()) {
							String prdNo = rs.getString("prdNo");
							String prdType = rs.getString("prdType");
							String prdName = rs.getString("prdName");
							String prdRoasting = rs.getString("prdRoasting");
							String prdPrice = rs.getString("prdPrice");
							String prdSmell = rs.getString("prdSmell");
							String prdTaste = rs.getString("prdTaste");
						%>

						<li class=""><a href="viewProductDetail.jsp?prdNo=<%=prdNo%>">
								<img src="../../images/capdesign/<%=prdNo%>.png"
								alt="<%=prdNo%>">
						</a>
							<div class="product_info">
								<p class="product_name"><%=prdName%></p>
								<p class="blending"><%=prdType%></p>
								<div class="product_info_detail">
									<div class="detail">
										<span class="detail1">로스팅</span> <span class="detail2"><%=prdRoasting%></span>
									</div>

									<div class="detail">

										<span class="detail1">향</span> <span class="detail2"><%=prdSmell%></span>
									</div>
									<div class="detail">
										<span class="detail1">맛</span> <span class="detail2"><%=prdTaste%></span>
									</div>
									<div class="detail">
										<span class="detail1">가격</span> <span class="detail2"><%=prdPrice%></span>
									</div>
								</div>
								<a class="move_detail"
									href="viewProductDetail.jsp?prdNo=<%=prdNo%>"> 자세히 보기 </a>
							</div></li>
						<%
							}
						%>
					</ul>
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
	<%
		} catch (Exception e) {
	out.println(e);
	}
	%>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="../../JS/navEvent.js"></script>
</body>
</html>