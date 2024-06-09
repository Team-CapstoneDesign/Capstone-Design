<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>capstone - dozan main page</title>
<link rel="stylesheet" href="../css/style.css">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
</head>
<body>
	<%
		String id = (String) session.getAttribute("sid");
	%>
	<div id="wrap">
		<canvas id="canvas" class="webgl"></canvas>
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
					<span class="quick_menu"><a href="./member/insertMember.jsp">회원가입</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="./member/mainlogout.jsp">로그아웃</a></span>
					<span class="quick_menu"><a href="mypage.jsp">마이페이지</a></span> <span
						class="quick_menu"><a href="./cart/showcart.jsp">장바구니</a></span>
					<%
						}
					%>
				</div>
			</div>
		</div>

		<div class="loading-bar"></div>
		<div class="containerMain" class="main">
		<div id="section1" class="kvWrap">
        
        <div class="section1_background">

        </div>
      </div>
      <div id="section1-1">
        <div class="cont">
          <img class="section1-1_wrap" src="../images/section1-1.png" alt="">
          <img class="section1-1_mobile_wrap" src="../images/section1-1_mobile.png" alt="">
        </div>
      </div>
      <div id="section3">
        <div class="cont">
          <div class="signature_timeOrigin">
            <img class="cignatureText" src="../images/DOZAN_signature_origin.png" alt="">
            <div class="signatureTitle">
              <p>두잔의 첫번째 시그니처 캡슐 커피</p>
              <h2>두잔 오리진</h2>
            </div>
            <div class="signature_time">
              <a href="./goods/viewProductDetail.jsp?prdNo=DS003"><div class="time morning" data-aos="flip-left" data-aos-easing="ease-out-cubic"  data-aos-duration="800"></div></a>
              <a href="./goods/viewProductDetail.jsp?prdNo=DS004"><div class="time afternoon" data-aos="flip-left" data-aos-easing="ease-out-cubic"  data-aos-duration="2000"></div></a>
              <a href="./goods/viewProductDetail.jsp?prdNo=DS005"><div class="time evening" data-aos="flip-left" data-aos-easing="ease-out-cubic"  data-aos-duration="3000"></div></a>
            </div>
            <div class="signature_time_capusle">
              <img class="time_capsule" src="../images/model02_3.png" alt="" data-aos="fade-up">
              <img class="time_capsule" src="../images/model02_4.png" alt="" data-aos="fade-up">
              <img class="time_capsule" src="../images/model02_6.png" alt="" data-aos="fade-up">
            </div>
            <div class="signature_explamation">
              <p>
                아침, 점심, 저녁이라는 삼시를 테마로<br>
                시간대 별 마시기 좋은 원두와 로스팅 단계를 선정해 탄생한<br>
                두잔의 시그니처 메뉴<br>
                <span>아침 · 점심 · 저녁</span>
              </p>
              <p>
                1st(10개입) 균일가 10,900원
              </p>
            </div>
            
          </div>

          <div class="signature_Origin" data-aos="fade-up">
            <div class="origin_left">
               <img src="../images/capdesign/DS001.png" alt="">
               <a href="./goods/viewProductDetail.jsp?prdNo=DS001"><button>자세히 보기</button></a>
            </div>
            <div class="origin_right">
              <div class="originTitle">두잔 시그니처 오리진 / 로스팅 하이</div>
              <div class="origin_explanation">
                <p>
                  마일드하고 부드러운 맛이 특징인 브라질 원두 산토스를<br>
                  사용하여 산미가 억제되고 쓴맛과 단맛이 증가해<br>
                  전체적으로 균형잡힌 맛을 느낄 수 있는<br>
                  두잔의 대표 시그니처 메뉴입니다.
                </p>
              </div>
              <div class="price">9,900 원</div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>로스팅</strong>
                </h3>
                <div class="progress">
                  <div class="progress-bar color-1" role="progressbar" aria-valuenow="65"
                  aria-valuemin="0" aria-valuemax="100" style="width:65%">
                    <span>6단계 로스팅 하이</span>
                  </div>
                </div>   
              </div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>감도</strong>
                </h3>
                <div class="progress">
                  <div class="progress-bar color-2" role="progressbar" aria-valuenow="50"
                  aria-valuemin="0" aria-valuemax="100" style="width:50%">
                    <span>50%</span>
                  </div>
                </div>   
              </div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>산미</strong>
                </h3>
                <div class="progress">
                  <div class="progress-bar color-3" role="progressbar" aria-valuenow="30"
                  aria-valuemin="0" aria-valuemax="100" style="width:30%">
                    <span>30%</span>
                  </div>
                </div>   
              </div>
            </div>
          </div>
          <div class="signature_Origin" data-aos="fade-up">
            <div class="origin_left">
               <img src="../images/capdesign/DS002.png" alt="">
               <a href="./goods/viewProductDetail.jsp?prdNo=DS002"><button>자세히 보기</button></a>
            </div>
            <div class="origin_right">
              <div class="originTitle">두잔 시그니처 블렌드 / 로스팅 시티</div>
              <div class="origin_explanation">
                <p>
                  브라질 산토스+콜롬비아 수프리모+베트남 로부스타를<br> 사용하여
                  이태리 커피의 묵직한 커피의 풍미와 진한 바디감이 특징
                </p>
              </div>
              <div class="price">10,900 원</div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>로스팅</strong>
                </h3>
                <div class="progress">
                  <div class="progress-bar color-1" role="progressbar" aria-valuenow="50"
                  aria-valuemin="0" aria-valuemax="100" style="width:50%">
                    <span>5단계 로스팅 시티</span>
                  </div>
                </div>   
              </div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>감도</strong>
                </h3>
                <div class="progress">
                  <div class="progress-bar color-2" role="progressbar" aria-valuenow="70"
                  aria-valuemin="0" aria-valuemax="100" style="width:70%">
                    <span>70%</span>
                  </div>
                </div>   
              </div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>산미</strong>
                </h3>
                <div class="progress">
                  <div class="progress-bar color-3" role="progressbar" aria-valuenow="50"
                  aria-valuemin="0" aria-valuemax="100" style="width:50%">
                    <span>50%</span>
                  </div>
                </div>   
              </div>
            </div>
          </div>

        </div>
      </div>
      <div id="section5">
        <div class="cont">
          <div class="signatureTitle best">
            <p>재 주문률이 가장 높은</p>
            <h2>두잔 베스트 캡슐</h2>
          </div>
          <div class="bestGoodsList">
						<div class="listSection1">
							<a href="./goods/viewProductDetail.jsp?prdNo=DT004"><img class="bestGoods"
								src="../images/bestgoods1.png" alt="" data-aos="fade-left"
								data-aos-duration="500"></a> <a href="./goods/viewProductDetail.jsp?prdNo=DO005"><img
								class="bestGoods" src="../images/bestgoods5.png" alt=""
								data-aos="fade-left" data-aos-duration="600"></a> <img
								class="bestGoods_capsule1" src="../images/model02_3.png" alt="">
							<img class="bestGoods_capsule2" src="../images/model02_4.png"
								alt="">
						</div>
						<div class="listSection2">
							<img class="gabe" src="../images/gabe.png" alt=""> <a
								href="./goods/viewProductDetail.jsp?prdNo=DT003">
							<img class="bestGoods"
								src="../images/bestgoods2.png" alt="" data-aos="fade-left"
								data-aos-duration="700"></a> <a href="./goods/viewProductDetail.jsp?prdNo=DB007">
							<img
								class="bestGoods" src="../images/bestgoods3.png" alt=""
								data-aos="fade-left" data-aos-duration="800"></a> <a href="./goods/viewProductDetail.jsp?prdNo=DB003">
							<img
								class="bestGoods" src="../images/bestgoods6.png" alt=""
								data-aos="fade-left" data-aos-duration="900"></a> 
							<img
								class="bestGoods_capsule3" src="../images/model04_6.png" alt="">
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
							<a href="#"><img src="../images/insta.png" alt=""></a>
						</div>
						<div>
							<a href="#"><img src="../images/twitter.png" alt=""></a>
						</div>
						<div>
							<a href="#"><img src="../images/youtube.png" alt=""></a>
						</div>
						<div>
							<a href="#"><img src="../images/naver.png" alt=""></a>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script src="../JS/navEvent.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/three.js/0.146.0/three.min.js"></script>
	<script
		src="https://unpkg.com/three@0.146.0/examples/js/loaders/GLTFLoader.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.3/gsap.min.js"></script>
	<script src="../JS/gltf.js"></script>
	<script>
		$('.kvList').slick({
			infinite : true,
			slidesToShow : 1,
			slidesToScroll : 1,
			autoplay : true,
			autoplaySpeed : 5000,
			pauseOnHover : false,
			dots : true,
			appendDots : $('#section1 .dot'),
			prevArrow : $('#section1 .prev'),
			nextArrow : $('#section1 .next')
		});

		$(document).ready(function() {
			headerState();
			quickState();

			$(window).scroll(function() {
				headerState();
				quickState();
			});

			function headerState() {
				var scrollValue = $(window).scrollTop();
				if (scrollValue > 50) {
					$('#header').addClass('scroll');
				} else {
					$('#header').removeClass('scroll');
				}
			}
			;

			function quickState() {
				var menu = $('.topmenu > li');
				menu.on('mouseenter', function() {
					$('#header').addClass('open');
				}).on('mouseleave', function() {
					$('#header').removeClass('open');
				})
			}

			$('.kvWrap .pause').on('click', function() {
				$('.kvList').slick('slickPause');
				$(this).css({
					display : 'none'
				});
				$('.kvWrap .play').css({
					display : 'block'
				});
			});
			$('.kvWrap .play').on('click', function() {
				$('.kvList').slick('slickPlay')
				$(this).css({
					display : 'none'
				});
				$('.kvWrap .pause').css({
					display : 'block'
				});
			});

		})

		var acc = document.getElementsByClassName("accordion");
		var i;

		for (i = 0; i < acc.length; i++) {
			acc[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var panel = this.nextElementSibling;
				if (panel.style.maxHeight) {
					panel.style.maxHeight = null;
				} else {
					panel.style.maxHeight = panel.scrollHeight + "px";
				}
			});
		}

		AOS.init({
			duration : 1000,
		});
	</script>
</body>
</html>