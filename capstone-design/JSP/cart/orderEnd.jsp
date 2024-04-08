<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<meta charset="EUC-KR">

<title>주문 완료</title>

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

		<!-- 컨텐츠 -->
		<div class="cart_container" name="cart_product">
			<!-- 네비게이션 헤더 -->
			<div class="cart_section1" name="cart_header">
				<div class="cart_headerTitle">
					<div class="cart_subTitle">주문완료</div>
					<br>
					<br>
				</div>
			</div>

			<div class="cart_content">
				<!-- 단계 진행도 -->
				<div class="stepper-wrapper">
					<div class="stepper-item completed">
						<div class="step-counter">1</div>
						<div class="step-name">장바구니</div>
					</div>
					<div class="stepper-item completed">
						<div class="step-counter">2</div>
						<div class="step-name">배송지 및 결제 정보 입력</div>
					</div>
					<div class="stepper-item completed">
						<div class="step-counter">3</div>
						<div class="step-name">주문 상세 내역 확인</div>
					</div>
					<div class="stepper-item completed">
						<div class="step-counter">4</div>
						<div class="step-name">주문 완료 및 확인</div>
					</div>
				</div>
			</div>

			<!-- 주문 완료 -->
			<div class="orderClear">
				<h2>주문 완료</h2>
				<h3>주문이 완료되었습니다. 구매해주셔서 감사합니다.</h3>

				<div class="orderClear_button">
					<a href="../index.jsp"><input type="button" class="btn_goMain" value="메인으로 돌아가기"></a>
					<a href="../mypage.jsp"><input type="button" class="btn_goMypage"
						value="내 주문내역 확인하기(마이페이지)"></a>
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
								class="footer_bold">문자상담 </span>카카오톡 플러스 친구 등록<br> 반품 안내는
							해당 상품 페이지를 참고해주세요
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
		<script
			src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>