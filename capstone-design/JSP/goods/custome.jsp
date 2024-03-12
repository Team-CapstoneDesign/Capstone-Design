<%@ page contentType="text/html;charset=euc-kr" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/custome.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.rawgit.com/InventPartners/Checkbox2Button/32fbe6d/css/checkbox2button.css" />

<script language="javascript" src="../dojan_js_package.js">
</script>

<title>Insert title here</title>
</head>
<body>
	<%
		String id = (String) session.getAttribute("sid");
	%>
	<div class="wrap">
		<div id="header">
			<div class="formbox">
				<h1 class="logo">
					<a href="#"> <span class="blind">두잔</span>
					</a>
				</h1>
				<div class="topmenuWrap">
					<ul class="topmenu">
						<li><a>캡슐 커스텀</a></li>
						<li><a>두잔 캡슐</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="./goods/viewProduct.jsp?ctgType=season">시즌한정</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=signature">시그니처</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=blending">블렌딩</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=original">오리지널</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=decaf">디카페인</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=beveridge">베버리지
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
		<div class="customeWrap custome_main">
			<div class="cont">
				<div id="start-screen">
					<h2 data-aos="fade-up">캡슐 커피 커스텀</h2>
					<p data-aos="fade-up">12종의 최고급 원두와 6가지 캡슐 커피 머신 기종과 호환 가능한 세상에
						단 하나뿐인 캡슐을 만들어보세요.</p>

					<button id="startBtn" data-aos="fade-up">캡슐 만들기</button>
				</div>
				<div class="custome_section" id="select-coffee"
					style="display: none;">
					<h2>베이스 원두 선택하기</h2>
					<div id="select-coffee-wrap">
						<img src="../../images/coffeeBean.png" alt="">
					</div>
					<div id="select-coffee-explain"></div>
					<div class="customeRadio" id="coffee-checkbox">
						<!--js로 커피 체크박스 추가-->
					</div>
					<div class="buttonWrap">
						<button class="custome_btn" id="coffee-next">다음</button>
					</div>
				</div>
				<div class="custome_section" id="select-blend"
					style="display: none;">
					<h2>블렌드 원두 선택하기</h2>
					<div id="select-coffee-wrap">
						<img src="../../images/coffeeBean.png" alt="">
					</div>
					<div id="select-coffee-explain"></div>
					<div id="blend-checkbox">
						<!--js로 커피 체크박스 추가-->
						<input type="checkbox" id="blend_null" name="blendCoffee">
						<label for="blend_null">선택안함</label>
					</div>
					<div class="buttonWrap">
						<button class="custome_btn" id="blend-prev">이전</button>
						<button class="custome_btn" id="blend-next">다음</button>
					</div>
				</div>
				<div class="custome_section" id="select-roasting"
					style="display: none;">
					<h2>로스팅 단계 설정</h2>
					<div class="roastingPost" id="roasting-info">
						<span id="roastingNum"></span> <span id="roastingName"></span> <span
							id="roastingEx"></span>
					</div>
					<div class="roastingSlide">
						<input class="roasting-step" id="roasting-range" type="range"
							name="roasting" id="temp3" min="1" max="8" value="5" step="1"
							list="markers" required />
						<datalist id="markers">
							<option value="1" label="1"></option>
							<option value="2"></option>
							<option value="3"></option>
							<option value="4"></option>
							<option value="5"></option>
							<option value="6"></option>
							<option value="7"></option>
							<option value="8"></option>
						</datalist>

					</div>
					<div class="buttonWrap">
						<button class="custome_btn" id="roasting-prev">이전</button>
						<button class="custome_btn" id="roasting-next">다음</button>
					</div>

				</div>
				<div class="custome_section" id="select-machine"
					style="display: none;">
					<h2>커피 머신 선택</h2>
					<div class="customeRadio" id="machine-radio">
						<input type="radio" id="nespresso-original" name="machine"
							value="네스프레소 오리지널"><label for="nespresso-original">네스프레소
							오리지널</label> <input type="radio" id="nespresso-vertuo" name="machine"
							value="네스프레소 버츄오"><label for="nespresso-vertuo">네스프레소
							버츄오</label> <input type="radio" id="dolceGusto" name="machine"
							value="돌체구스토"><label for="dolceGusto">돌체구스토</label> <input
							type="radio" id="illy" name="machine" value="일리"><label
							for="illy">일리</label> <input type="radio" id="kanu"
							name="machine" value="카누"><label for="kanu">카누</label> <input
							type="radio" id="keurig" name="machine" value="큐리그"><label
							for="keurig">큐리그</label>
					</div>
					<div class="buttonWrap">
						<button class="custome_btn" id="machine-prev">이전</button>
						<button class="custome_btn" id="machine-next"
							onclick="customeResult()">완성</button>
					</div>
				</div>
				<form name="result" action="../cart/csIncart.jsp" class="custome_section"
					id="select-result" style="display: none;">
					<h2>캡슐 커피 완성</h2>
					<div id="custome_result">
						<p>
							베이스 원두: <span id="custome_base"></span>
						</p>
						<p>
							블렌드 원두: <span id="custome_blend"></span>
						</p>
						<p>
							블렌딩 단계: <span id="custome_roasting"></span>단계
						</p>
						<p>
							커피 머신:<span id="custome_machin"></span>
						</p>
						<p>
							가격:<span id="custome_price"></span>
						</p>
            <input type="text" name="customeName" placeholder="커피의 이름을 지어주세요">
			<input type="number" name="customeQty" min="1" max="10">
					</div>
					<div id="hiddenInputRadio"></div>
					<div class="buttonWrap">
						<button class="custome_btn" onclick="location.href='custome.html'">처음으로
							돌아가기</button>
						<button class="custome_btn" onclick="checkCustomeValue()">장바구니에
							담기</button>
					</div>
				</form>
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
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="../../JS/navEvent.js"></script>
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script
		src="https://cdn.rawgit.com/InventPartners/Checkbox2Button/32fbe6d/js/checkbox2button.min.js"></script>

	<script src="../../JS/custome.js"></script>
	<script>
    AOS.init({
      duration: 1000,
    });
  </script>
</body>
</html>