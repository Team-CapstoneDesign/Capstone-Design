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
		<div class="headerTitle">
			<a href="../index.jsp"><img class="logo"
				src="../../images/logo.png" alt=""></a>
		</div>
		<div id="header">
			<div class="formbox">
				<input type="text" placeholder="검색">
				<div class="topmenuWrap">
					<ul class="topmenu">
						<li><a>캡슐 커스텀</a></li>
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
									<li><a href="">선물 패키지</a></li>
								</ul>
							</div></li>
						<li><a>커피 이야기</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="#">캡슐 조합 리뷰</a></li>
									<li><a href="#">원두소개</a></li>
									<li><a href="#">커피 응용 레시피</a></li>
									<li><a href="#">나와 어울리는 커피</a></li>
								</ul>
							</div></li>
						<li><a>두잔 이야기</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="#">두 잔의 여유</a></li>
									<li><a href="#">두 잔의 환경가치</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
				<div class="nav_top">
					<%
						if (id == null) {
					%>
					<span class="quick_menu"><a href="">로그인</a></span> <span
						class="quick_menu"><a href="">회원가입</a></span> <span
						class="quick_menu"><a href="">고객센터</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="../member/logout.jsp">로그아웃</a></span>
					<span class="quick_menu"><a href="">마이페이지</a></span> <span
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

			<!-- 카테고리 필터. 현재 구동 안 함. -->
			<div class="product_kind_wrap">
				<p class="tit">분류 보기</p>
				<div class="product_select_wrap">
					<form method="post">
						<fieldset>
							<legend class="hid">캡슐 카테고리 별 분류 보기</legend>
							<ul class="cate_list">
								<div>
									<li><input type="checkbox" name="product_all"
										id="product_all" onclick="filterObjects('all')"> <label
										for="product_all">전체 캡슐 보기</label></li>
									<li><input type="checkbox" name="product_season"
										id="product_season" onclick="filterObjects('season')">
										<label for="product_season">시즌한정 캡슐</label></li>
									<li><input type="checkbox" name="product_signature"
										id="product_signature" onclick="filterObjects('signature')">
										<label for="product_signature">시그니쳐 캡슐</label></li>
									<li><input type="checkbox" name="product_blending"
										id="product_blending" onclick="filterObjects('blending')">
										<label for="product_blending">블렌딩 캡슐</label></li>
									<li><input type="checkbox" name="product_original"
										id="product_original" onclick="filterObjects('original')">
										<label for="product_original">오리지널 캡슐</label></li>
									<li><input type="checkbox" name="product_decaf"
										id="product_decaf" onclick="filterObjects('decaffeine')">
										<label for="product_decaf">디카페인 캡슐</label></li>
									<li><input type="checkbox" name="product_beverage"
										id="product_beverage" onclick="filterObjects('beverage')">
										<label for="product_beverage">베버리지 캡슐</label></li>

									<li><input type="checkbox" name="product_Tsour"
										id="product_Tsour" onclick="filterObjects('Tsour')"> <label
										for="product_Tsour">신 맛</label></li>
									<li><input type="checkbox" name="product_Tsweet"
										id="product_Tsweet" onclick="filterObjects('Tsweet')">
										<label for="product_Tsweet">단 맛</label></li>
									<li><input type="checkbox" name="product_Tbitter"
										id="product_Tbitter" onclick="filterObjects('Tbitter')">
										<label for="product_Tbitter">쓴 맛</label></li>

									<li><input type="checkbox" name="product_beanBS"
										id="product_beanBS" onclick="filterObjects('beanBS')">
										<label for="product_beanBS">브라질 산토스</label></li>
									<li><input type="checkbox" name="product_beanCS"
										id="product_beanCS" onclick="filterObjects('beanCS')">
										<label for="product_beanCS">콜롬비아 수프리모</label></li>
									<li><input type="checkbox" name="product_beanJB"
										id="product_beanJB" onclick="filterObjects('beanJB')">
										<label for="product_beanJB">자메이카 블루마운틴</label></li>
									<li><input type="checkbox" name="product_beanEY"
										id="product_beanEY" onclick="filterObjects('beanEY')">
										<label for="product_beanEY">에티오피아 예가체프</label></li>
									<li><input type="checkbox" name="product_beanKA"
										id="product_beanKA" onclick="filterObjects('beanKA')">
										<label for="product_beanKA">케냐 AA</label></li>
									<li><input type="checkbox" name="product_beanCT"
										id="product_beanCT" onclick="filterObjects('beanCT')">
										<label for="product_beanCT">코스타리카 따라주</label></li>
									<li><input type="checkbox" name="product_beanTA"
										id="product_beanTA" onclick="filterObjects('beanTA')">
										<label for="product_beanTA">탄자니아 AA</label></li>
									<li><input type="checkbox" name="product_beanYM"
										id="product_beanYM" onclick="filterObjects('beanYM')">
										<label for="product_beanYM">예멘 모카 마타리</label></li>
									<li><input type="checkbox" name="product_beanHK"
										id="product_beanHK" onclick="filterObjects('beanHK')">
										<label for="product_beanHK">하와이 코나</label></li>
									<li><input type="checkbox" name="product_beanGA"
										id="product_beanGA" onclick="filterObjects('beanGA')">
										<label for="product_beanGA">과테말라 안티구아</label></li>
									<li><input type="checkbox" name="product_beanPG"
										id="product_beanPG" onclick="filterObjects('beanPG')">
										<label for="product_beanPG">파나마 게이샤</label></li>
									<li><input type="checkbox" name="product_beanES"
										id="product_beanES" onclick="filterObjects('beanES')">
										<label for="product_beanES">엘살바도르 SHG</label></li>
									<li><input type="checkbox" name="product_beanIM"
										id="product_beanIM" onclick="filterObjects('beanIM')">
										<label for="product_beanIM">인도네시아 만델링</label></li>
									<li><input type="checkbox" name="product_beanBR"
										id="product_beanBR" onclick="filterObjects('beanBR')">
										<label for="product_beanBR">베트남 로부스타</label></li>
								</div>
							</ul>
						</fieldset>
					</form>
				</div>
			</div>

			<!-- 카테고리 필터 끝. 현재 구동 안 함. -->

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
							<%-- 											<li class="">
												<dl>
													<dt>
														<a href="viewProductDetail.jsp?prdNo=<%= prdNo%>" class="">
														<img src="../../images/sample/sample_<%=prdNo%>.png" alt="<%=prdNo%>"></a>
													</dt>
													<dd><%=prdName%></dd>
													<dd>커피 향 또는 맛 입력란</dd>
													<dd>1세트 (10개)</dd>
													<dd><%=prdPrice%>원</dd>
												</dl>
											</li>	 --%>
							<li class=""><a
								href="viewProductDetail.jsp?prdNo=<%=prdNo%>" class=""> <img
									src="../../images/productImg/productImg1.png" alt="<%=prdNo%>"></a>
								<div class="product_info">
									<p class="product_name"><%=prdName %></p>
									<p class="blending"><%=prdType %></p>
									<div class="product_info_detail">
										<div class="detail">
											<span class="detail1">로스팅</span> <span class="detail2"><%=prdRoasting %></span>
										</div>

										<div class="detail">
											<span class="detail1">향</span> <span class="detail2"><%=prdSmell %></span>
										</div>
										<div class="detail">
											<span class="detail1">맛</span> <span class="detail2"><%=prdTaste %></span>
										</div>
										<div class="detail">
											<span class="detail1">가격</span> <span class="detail2"><%=prdPrice %></span>
										</div>
									</div>
									<a class="move_detail"
										href="viewProductDetail.jsp?prdNo=%= prdNo%>"> 자세히 보기 </a>
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