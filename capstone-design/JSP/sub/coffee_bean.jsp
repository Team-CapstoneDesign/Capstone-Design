<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="EUC-KR">
<title>원두 소개</title>

<link rel="stylesheet" href="../../css/style.css">

<link rel="stylesheet" href="../../css/sub_beans.css">

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
					두잔에서 만날 수 있는 원두 <br> <span>두잔에서 엄별한 원두들을 소개합니다. </span>
				</div>
				<div class="sub_headerTitle">
					<ul class="smap">
						<!-- 미니 네비게이션 -->
						<li><a href="index.html">home</a></li>
						<li>></li>
						<li class="en"><a href="index.html">커피 이야기</a></li>
						<li>></li>
						<li><a href="index.html" class="this">원두 소개</a></li>
					</ul>
				</div>
			</div>

			<main>
				<div class="beans_contents">
				  <header class="beans_title">
					<h3>두잔은 합리적인 가격에 다양하고 최상의 상태인 원두들을 제공하기 위해 노력합니다.</h3>
				  </header>  
				  <div class="coffee_beans_list">
					<div class="beans_info">
					  <img src="../../images/beansinfo/01_BS.png">
					  <h4>브라질 산토스</h4>
					  <p>브라질 산토스는 세계 커피생산량의 30%를 차지하며, 산토스 지방의 3, 4년 정도 된 어린 커피나무에서 수확한 커피로, NO.2등급이 최고 등급입니다. 부드러운 맛과 신맛이 균일하게 조화를 이루고, 부드러운 풍미와 적당히 쓴맛이 어우러진 중성적인 커피로 향이 깊고 깔끔한 마일드 커피입니다.</p>      
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/02_CS.png">
					  <h4>콜롬비아 수프리모</h4>
					  <p>콜롬비아는 가장 품질 좋기로 소문난 커피를 생산해내는 나라로, 생산량은 세계 3위의 생산량을 보이며, 수프리모 등급을 받은 커피는 최고급 원두로 손꼽힙니다. 중량감 있는 맛과 진한 향기, 균형잡힌 산도가 특징이며, 어떤 강도의 로스팅에도 좋은 맛을 내는 고급 커피입니다.</p>      
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/03_JB.png">
					  <h4>자메이카 블루마운틴</h4>
					  <p>자메이카 블루마운틴은 세계 3대 원두로, 자메이카 블루마운틴 지역 해발 1,200미터가 넘는 고지대에서만 재배되고, 정부의 통제 아래 매년 적은 양만 생산합니다. 커피가 가진 신맛, 단맛, 스모키한 맛을 비롯해 부드러우면서도 깔끔한 맛을 조화롭게 내며, 쓴 맛이 거의 없어 ‘커피의 황제’라고도 불리웁니다.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/04_EY.png">
					  <h4>에티오피아 예가체프</h4>
					  <p>에티오피아를 대표하는 원두 예가 체프는 고원도시의 이름이며, 유기농법을 통해 맛과 향이 뛰어납니다. 신맛이 강하고 향과 바디감이 있는 커피로, 발랄한 꽃향기와 가벼운 베리류의 향으로 신맛과 단맛의 밸런스가 조화를 이루어 에티오피아 커피중 가장 고급스럽고 세련된 커피로 평가 받습니다.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/05_YM.png">
					  <h4>예멘 모카 마타리</h4>
					  <p>아라비아 반도 남서부에 위치한 예멘 국가 마타리에서 생산되는 커피로 '마타리'는 예맨의 최고급 커피 등급으로, 한때 세계 커피 무역의 최고로 꼽혔던 항구인 '모카항'이름을 딴 커피입니다. 세계 3대 원두 중 하나로, 과일맛이 풍부하고 흙 냄새와 다크 초콜릿의 향이 조화롭고, 적절한 쓴맛과 단맛을 지니고 있습니다.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/06_TA.png">
					  <h4>탄자니아 AA</h4>
					  <p>킬리만자로 커피라고도 하며, 'AA'는 최고급 등급으로 신맛, 바디감, 향기등이 모두 우수하며 와인에서 느껴지는 고소한 산미와 견과류과 초콜릿향미가 특징입니다. 향이 깊고 신맛, 단맛, 쓴맛이 오묘하게 조화를 이루어 독특한 향과 부드러운 맛을 지니고 있으며 카페인 함량이 적은것이 특징입니다.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/07_KA.png">
					  <h4>케냐 AA</h4>
					  <p>케냐 AA는 해발 2,000미터가 넘는 고지대에서 생산되는 커피로, 'AA'는 원두의 크기를 나타내며, 가장 큰 원두이면서 최고급을 의미하는 등급입니다. 향이 강하고 묵직한 바디감, 와인향과 과일같은 상큼한 신맛이 특징인 프리미엄 커피로 독특한 쌉쌀한 맛이 일품입니다.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/08_CT.png">
					  <h4>코스타리카 따라주</h4>
					  <p>중남미의 유럽이라 불리는 코스타리카는 1800년대부터 커피를 재배하여 세계 9위의 커피대국 입니다. 아라비카종만 경작하며, 따라주는 가장 최고급 등급을 받은 커피를 말합니다. 은은하게 퍼지는 단맛과 신맛에 약간의 쌉싸름한 맛이 조화롭고, 몰트의 구수함과 묵직한 바디감이 좋은 커피입니다.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/09_HC.png">
					  <h4>하와이 코나</h4>
					  <p>하와이 코나는 하와이 코나섬에서 재배, 수확한 커피를 말하는데 여기서도 최고 등급인 엑스트라 펜시라는 등급에 한해서만 세계 3대 원두로 분류됩니다. 커피에 꽃향과 브라과일향이 은은하게 나며, 적당한 신맛이 일품이라 평가받습니다.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/10_PG.png">
					  <h4>파니마 게이샤</h4>
					  <p>파나마 지협에 있는 파나마는 고지대, 비옥한 화산 토양, 풍부한 강우량등의 조건이 좋아 훌륭한 커피를 생산해 내기로 유명하며, 파나마의 게이샤는 최고급 스페셜티 커피로 꽃의 향기와 좋은 산미, 바디감으로 커피 마니아들 사이에서 사랑받고 있습니다.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/11_GA.png">
					  <h4>과테말라 안티구아</h4>
					  <p>안티구아는 과테말라에서 가장 오래되고 유명한 커피 생산지역으로, 스모키한 맛과 격조 높은 풍미가 일품으로, 신맛이 강하고 감칠맛이 납니다. 화산지역에서 주로 커피를 경작하여 고급 스모키커피로 유명하며, 산미와 바디가 좋고 오렌지의 신맛, 초콜릿의 향미와 스모키한 향이 특징입니다.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/12_ES.png">
					  <h4>엘살바도르 SHG</h4>
					  <p>중앙아메리카에 위치해 있는 엘살바도르의 원두는 크기가 작고 조밀도가 약한 편입니다. 부드러운 초콜릿과 캐러멜 향의 뛰어난 향미와 좋은 산미로 우수한 밸런스를 자랑합니다. 내추럴 가공을 한 듯 수박의 청량함, 포도의 단맛이 특징이며 후반부에 감도는 단맛의 여운이 매력적입니다.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/13_IM.png">
					  <h4>인도네시아 만델링</h4>
					  <p>유럽에서 인기가 높은 만델링은 중남미 커피에 비해 부드러우면서도 강한 농도를 가진 커피입니다. 수마트라 섬의 특별한 토양으로 인해 초콜릿 맛과 고소하고 달콤한 향이 납니다. 묵직하고 강렬한 바디를 가지며 풍부한 향이 납니다.</p>
					</div>
					<div class="beans_info">
					  <img src="../../images/beansinfo/14_VR.png">
					  <h4>베트남 로부스타</h4>
					  <p>로부스타 품종의 대표 원산지인 베트남 로부스타는 고소하고 마일드하며 다크 초콜릿처럼 씁쓸한 것이 매력입니다. 로부스타는 대표적으로 믹스커피의 주원료로도 사용되며 고소한 것이 특징인 만큼 여러 블렌드의 주원료로 사용되고 있습니다.</p>
					</div>
				  </div>
				</div>    
			  </main>

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
</body>
</html>