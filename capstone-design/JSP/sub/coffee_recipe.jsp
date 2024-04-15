<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="EUC-KR">
<title>커피 응용 레시피</title>

<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/sub_recipe.css">

</head>
	<%
		String id = (String) session.getAttribute("sid");
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
									<li><a href="coffee_bean.jsp">원두소개</a></li>
									<li><a href="coffee_recipe.jsp">커피 응용 레시피</a></li>
								</ul>
							</div></li>
						<li><a>두잔 이야기</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="brand_intro.jsp">두 잔의 여유</a></li>
									<li><a href="brand_recycle.jsp">두 잔의 환경가치</a></li>
								</ul>
							</div></li>
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
					두잔에서 선보이는 특별한 레시피 <br> <span>두잔 캡슐을 응용한 레시피들을 만나보세요! </span>
				</div>
				<div class="sub_headerTitle">
					<ul class="smap">
						<!-- 미니 네비게이션 -->
						<li><a href="index.html">home</a></li>
						<li>></li>
						<li class="en"><a href="index.html">커피 이야기</a></li>
						<li>></li>
						<li><a href="index.html" class="this">커피 응용 레시피</a></li>
					</ul>
				</div>
			</div>

		<!-- 컨텐츠 시작 -->
			
		<!--모달 팝업-->
			<div class="modal">
				<div class="modal_popup">
					<h3>말차 슈페너 레시피</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DS001">두잔 시그니처 오리진</a></h4>
					<ul>
						<li>1. 말차 파우더를 따뜻한 물로 녹여주세요</li>
						<li>2. 아이스 트레이에 넣고 얼려주세요</li>
						<li>3. 말차얼음을 컵에 옮기고 두잔 시그니처 오리진을 추출해주세요</li>
						<li>4. 휘핑크림, 말차 파우더, 바닐라시럽으로 만든 말차크림을 얹어주세요</li>
						<li>5. 말차 파우더를 뿌려주세요</li>
					</ul>
					<button type="button" class="close_btn">닫기</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>아이스 흑당 라테 레시피</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DO005">두잔 따라주</a></h4>
					<ul>
						<li>1. 잔에 흑당 시럽 드리즐을 둘러주세요</li>
						<li>2. 잔의 반을 얼음으로 채워주세요</li>
						<li>3. 우유를 부어주세요</li>
						<li>4. 그 위에 추출한 두잔 따라주를 부어주세요</li>
					</ul>
					<button type="button" class="close_btn">닫기</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>콜드 블루 라테 레시피</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DB004">두잔 프리미엄 블렌딩</a></h4>
					<ul>
						<li>1. 블루 큐라소 시럽 1티스푼에 따뜻한 우유를 넣고 섞어주세요</li>
						<li>2. 얼음과 우유를 부어주세요</li>
						<li>3. 두잔 프리미엄 블렌딩를 추출해주세요</li>
						<li>4. 추출한 커피를 부어주세요</li>
					</ul>
					<button type="button" class="close_btn">닫기</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>달고나 라테 레시피</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DO007">두잔 SHG</a></h4>
					<ul>
						<li>1. 연유, 바닐라시럽, 우유를 넣고 섞어주세요</li>
						<li>2. 얼음을 원하는 만큼 넣어주세요</li>
						<li>3. 두잔 SHG를 추출 해주세요</li>
						<li>4. 그 위에 달고나를 올려 주세요</li>
					</ul>
					<button type="button" class="close_btn">닫기</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>두잔 초코치노 레시피</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DT003">두잔 코코아</a></h4><br><br>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DD002">두잔 디카페인 과테말라</a></h4>
					<ul>
						<li>1. 두잔 코코아를 추출 해주세요</li>
						<li>2. 두잔 디카페인 과테말라를 추출 해주세요</li>
						<li>3. 두잔 코코아 위에 추출한 커피를 부어주세요</li>
						<li>4. 그 위에 크림을 올려 주세요</li>
					</ul>
					<button type="button" class="close_btn">닫기</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>아이스 히비스커스프레소 레시피</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DT001">두잔 히비스커스 티</a></h4><br><br>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DB002">두잔 예가체프 블렌딩</a></h4>
					<ul>
						<li>1. 두잔 히비스커스 티를 추출 해주세요</li>
						<li>2. 얼음으로 컵을 가득 채워주세요</li>
						<li>3. 두잔 예가체프 블렌딩를 추출 해주세요</li>
						<li>4. 추출한 커피를 부어 섞어주세요</li>
					</ul>
					<button type="button" class="close_btn">닫기</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>자몽 커피 에이드 레시피</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DO008">두잔 AA</a></h4><br><br>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DT004">두잔 자몽허니 블랙 티</a></h4>
					<ul>
						<li>1. 얼음으로 컵을 2/3 채워주세요</li>
						<li>2. 그 위에 두잔 자몽허니 블랙 티를 추출 해주세요</li>
						<li>3. 따로 추출한 두잔 AA를 그 위에 부어주세요</li>
						<li>4. 탄산수를 넣고 잘 섞어주세요</li>
					</ul>
					<button type="button" class="close_btn">닫기</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>두잔 라테 레시피</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DS004">두잔 런치 오리진</a></h4>
					<ul>
						<li>1. 연유, 휘핑 크림, 바닐라 시럽, 우유를 넣고 스푼으로 잘 섞어주세요</li>
						<li>2. 그 위로 두잔 런치 오리진을 추출해 주세요</li>
						<li>3. 얼음을 원하는 만큼 넣어주세요</li>
					</ul>
					<button type="button" class="close_btn">닫기</button>
				</div>
			</div>
			<div class="modal">
				<div class="modal_popup">
					<h3>아이스 두잔 버블티 레시피</h3>
					<h4><a href="../goods/viewProductDetail.jsp?prdNo=DB007">두잔 가을 블렌딩</a></h4>
					<ul>
						<li>1. 펄을 원하는 만큼 넣어주세요</li>
						<li>2. 연유, 바닐라 시럽을 넣고 펄과 잘 섞어주세요</li>
						<li>3. 우유를 부어 잘 섞어주세요</li>
						<li>4. 따로 추출한 두잔 가을 블렌딩을 그 위에 부어주세요</li>
						<li>5. 얼음을 원하는 만큼 넣어주세요</li>
					</ul>
					<button type="button" class="close_btn">닫기</button>
				</div>
			</div>
		<!--end 모달 팝업-->

<main class="recipe_contents">
    <div class="recipe_box">
        <h2>말차 슈페너</h2>
        <button type="button" class="modal_btn" data-recipe="말차 슈페너">레시피 보기</button>
    </div>
    <div class="recipe_box">
        <h2>아이스 흑당 라테</h2>
        <button type="button" class="modal_btn" data-recipe="아이스 흑당 라테">레시피 보기</button>
    </div>
    <div class="recipe_box">
        <h2>콜드 블루 라테</h2>
        <button type="button" class="modal_btn" data-recipe="콜드 블루 라테">레시피 보기</button>
    </div>
    <div class="recipe_box">
        <h2>달고나 라테</h2>
        <button type="button" class="modal_btn" data-recipe="달고나 라테">레시피 보기</button>
    </div>
    <div class="recipe_box">
        <h2>두잔 초코치노</h2>
		<button type="button" class="modal_btn" data-recipe="두잔 초코치노">레시피 보기</button>
    </div>
    <div class="recipe_box">
        <h2>아이스 히비스커스프레소</h2>
		<button type="button" class="modal_btn" data-recipe="아이스 히비스커스프레소">레시피 보기</button>
    </div>
    <div class="recipe_box">
		<h2>자몽 커피 에이드</h2>
		<button type="button" class="modal_btn" data-recipe="자몽 커피 에이드">레시피 보기</button>
    </div>
    <div class="recipe_box">
        <h2>두잔 라테</h2>
		<button type="button" class="modal_btn" data-recipe="두잔 라테">레시피 보기</button>
    </div>
    <div class="recipe_box">
        <h2>아이스 두잔 버블티</h2>
        <button type="button" class="modal_btn" data-recipe="아이스 두잔 버블티">레시피 보기</button>
    </div>
</main>

<!-- 컨텐츠 끝 -->

			
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
	<script src="../../JS/navEvent.js"></script>
	<script language="javascript" src="../../JS/modal_popup.js"></script>
</body>
</html>