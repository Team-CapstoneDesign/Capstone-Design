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
						<span class="blind">����</span>
					</h1>
					</a>
				<div class="topmenuWrap">
					<ul class="topmenu">
						<li><a href="./goods/custome.jsp">ĸ�� Ŀ����</a></li>
						<li><a>���� ĸ��</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="./goods/viewProduct.jsp?ctgType=season">��������</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=signature">�ñ״�ó</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=blending">����</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=original">��������</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=decaffeine">��ī����</a></li>
									<li><a href="./goods/viewProduct.jsp?ctgType=beverage">��������
											/ ��Ŀ��</a></li>
								</ul>
							</div></li>
						<li><a>Ŀ�� �̾߱�</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="./review/review_list.jsp">ĸ�� ���� ����</a></li>
									<li><a href="./sub/coffee_bean.jsp">���μҰ�</a></li>
									<li><a href="./sub/coffee_recipe.jsp">Ŀ�� ���� ������</a></li>
								</ul>
							</div></li>
						<li><a>���� �̾߱�</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="./sub/brand_intro.jsp">�� ���� ����</a></li>
									<li><a href="./sub/brand_recycle.jsp">�� ���� ȯ�氡ġ</a></li>
								</ul>
							</div></li>
					</ul>
				</div>
				<div class="nav_top">
					<%
						if (id == null) {
					%>
					<span class="quick_menu"><a href="./member/login.jsp">�α���</a></span>
					<span class="quick_menu"><a href="./member/insertMember.jsp">ȸ������</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="./member/mainlogout.jsp">�α׾ƿ�</a></span>
					<span class="quick_menu"><a href="mypage.jsp">����������</a></span> <span
						class="quick_menu"><a href="./cart/showcart.jsp">��ٱ���</a></span>
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
              <p>������ ù��° �ñ״�ó ĸ�� Ŀ��</p>
              <h2>���� ������</h2>
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
                ��ħ, ����, �����̶�� ��ø� �׸���<br>
                �ð��� �� ���ñ� ���� ���ο� �ν��� �ܰ踦 ������ ź����<br>
                ������ �ñ״�ó �޴�<br>
                <span>��ħ �� ���� �� ����</span>
              </p>
              <p>
                1st(10����) ���ϰ� 10,900��
              </p>
            </div>
            
          </div>

          <div class="signature_Origin" data-aos="fade-up">
            <div class="origin_left">
               <img src="../images/capdesign/DS001.png" alt="">
               <a href="./goods/viewProductDetail.jsp?prdNo=DS001"><button>�ڼ��� ����</button></a>
            </div>
            <div class="origin_right">
              <div class="originTitle">���� �ñ״�ó ������ / �ν��� ����</div>
              <div class="origin_explanation">
                <p>
                  ���ϵ��ϰ� �ε巯�� ���� Ư¡�� ����� ���� ���佺��<br>
                  ����Ͽ� ��̰� �����ǰ� ������ �ܸ��� ������<br>
                  ��ü������ �������� ���� ���� �� �ִ�<br>
                  ������ ��ǥ �ñ״�ó �޴��Դϴ�.
                </p>
              </div>
              <div class="price">9,900 ��</div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>�ν���</strong>
                </h3>
                <div class="progress">
                  <div class="progress-bar color-1" role="progressbar" aria-valuenow="65"
                  aria-valuemin="0" aria-valuemax="100" style="width:65%">
                    <span>6�ܰ� �ν��� ����</span>
                  </div>
                </div>   
              </div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>����</strong>
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
                  <strong>���</strong>
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
               <a href="./goods/viewProductDetail.jsp?prdNo=DS002"><button>�ڼ��� ����</button></a>
            </div>
            <div class="origin_right">
              <div class="originTitle">���� �ñ״�ó ���� / �ν��� ��Ƽ</div>
              <div class="origin_explanation">
                <p>
                  ����� ���佺+�ݷҺ�� ��������+��Ʈ�� �κν�Ÿ��<br> ����Ͽ�
                  ���¸� Ŀ���� ������ Ŀ���� ǳ�̿� ���� �ٵ��� Ư¡
                </p>
              </div>
              <div class="price">10,900 ��</div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>�ν���</strong>
                </h3>
                <div class="progress">
                  <div class="progress-bar color-1" role="progressbar" aria-valuenow="50"
                  aria-valuemin="0" aria-valuemax="100" style="width:50%">
                    <span>5�ܰ� �ν��� ��Ƽ</span>
                  </div>
                </div>   
              </div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>����</strong>
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
                  <strong>���</strong>
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
            <p>�� �ֹ����� ���� ����</p>
            <h2>���� ����Ʈ ĸ��</h2>
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
					<li><a href="">ȸ��Ұ�</a></li>
					<li><a href="">�̿���</a></li>
					<li><a href="">����������޹�ħ </a></li>
					<li><a href="">������</a></li>
				</ul>
			</div>
			<div class="footer2">
				<div class="call_center">
					<p class="footer_title">����������</p>
					<p class="footer_text">
						<span class="tell"><img src="../images/tell.png" alt=""></span><span
							id="tell_number">02-456-789</span><br> <span
							class="footer_bold">���ð� </span>10:00 ~ 18:00<br> <span
							class="footer_bold">���ڻ�� </span>īī���� �÷��� ģ�� ���<br> ��ǰ �ȳ��� �ش�
						��ǰ �������� �������ּ���   
					</p>
				</div>

				<div class="company">
					<p class="footer_title">ȸ�� ����</p>
					<p class="footer_text">
						<span class="footer_bold">ȸ���</span>(��)���� / �� ���� ����<br> <span
							class="footer_bold">��ǥ</span>������<br> <span
							class="footer_bold">��ǥ��ȭ</span>02-456-789<br> <span
							class="footer_bold">�ּ�</span>����Ư���� ������<br> <span
							class="footer_bold">�̸���</span>alslalsl_06@naver.com<br>
					</p>
				</div>

				<div class="delivery">
					<p class="footer_title">��۾ȳ�</p>
					<p class="footer_text">
						CJ �������(TEL 1588-4321)<br> ��� ��Ȳ�� �ù�� Ȩ�������� �������ּ���<br> <a
							href="#">��� ��Ȳ Ȯ���ϱ�></a>
					</p>
				</div>
			</div>
			<div class="footer3">
				<div class="shopping_menu">
					<p class="footer_title">���� �޴�</p>
					<p class="footer_text">
						<a href="#" id="shopping_text">���� ���� ����</a><br> <a href="#"
							id="shopping_text">���� �Խ���</a>
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