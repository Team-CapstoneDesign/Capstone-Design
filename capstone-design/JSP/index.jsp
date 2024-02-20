<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
  <title>capstone - dojan main page</title>
  <link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
</head>
<body>
<%
	String id = (String)session.getAttribute("sid");
%>
  <div id="wrap">
    <div class="headerTitle">
      <a href="../index.jsp"><img class="logo" src="../images/logo.png" alt=""> </a>
    </div>    
    <div id="header">
      <div class="formbox">
        <input type="text" placeholder="검색">
        <div class="topmenuWrap">
          <ul class="topmenu">
            <li>
              <a>캡슐 커스텀</a>
            </li>
            <li>
              <a>두잔 캡슐</a>
              <div class="submenu">
                <ul id="productMenu">
                  <li><a href="./goods/viewProduct.jsp?ctgType=season">시즌한정</a></li>
                  <li><a href="./goods/viewProduct.jsp?ctgType=signature">시그니처</a></li>
                  <li><a href="./goods/viewProduct.jsp?ctgType=blending">블렌딩</a></li>
                  <li><a href="./goods/viewProduct.jsp?ctgType=original">오리지널</a></li>
                  <li><a href="./goods/viewProduct.jsp?ctgType=decaf">디카페인</a></li>
                  <li><a href="./goods/viewProduct.jsp?ctgType=beveridge">베버리지 / 논커피</a></li>
                  <li><a href="">선물 패키지</a></li>
                </ul>
              </div>
            </li>
            <li>
              <a>커피 이야기</a>
              <div class="submenu">
                <ul id="productMenu">
                  <li><a href="#">캡슐 조합 리뷰</a></li>
                  <li><a href="#">원두소개</a></li>
                  <li><a href="#">커피 응용 레시피</a></li>
                  <li><a href="#">나와 어울리는 커피</a></li>
                </ul>
              </div>
            </li>
            <li>
              <a>두잔 이야기</a>
              <div class="submenu">
                <ul id="productMenu">
                  <li><a href="#">두 잔의 여유</a></li>
                  <li><a href="#">두 잔의 환경가치</a></li>
                </ul>
              </div>
            </li>
          </ul>
        </div>
        <div class="nav_top">
       	<% if(id == null){
		%>		
          <span class="quick_menu"><a href="./member/login.jsp">로그인</a></span>
          <span class="quick_menu"><a href="">회원가입</a></span>
          <span class="quick_menu"><a href="">고객센터</a></span>
        <%
			} else{
		%>
		  <span class="quick_menu"><a href="">로그아웃</a></span>
          <span class="quick_menu"><a href="">마이페이지</a></span>
          <span class="quick_menu"><a href="">고객센터</a></span>
        <%
			}
		%>
        </div>
    </div>
	</div>
    <div class="containerMain" class="main">
      <div id="section1" class="kvWrap">
        <div class="kvList">
          <div class="slide" style="background-color: rgb(190, 246, 246);"></div>
          <div class="slide" style="background-color: #0092BF;;"></div>
          <div class="slide" style="background-color: rgb(2, 110, 110);"></div>
        </div>
      </div>
      <div id="section2">
        <div class="cont">
          <div class="bestCapsule">
            <div class="bestCapsule_left">
              <div class="deco circle1"></div>
              <div class="deco circle2"></div>
              <img class="capsuleSlide1" src="../images/capsule.png" alt="">
              <div class="bestCapsule_explanation">
                <div class="capsuleSlide1_name">name</div>
                <div class="capsuleSlide1_explanation">explanation</div>
                <div class="capsuleSlide1_price">price</div>
              </div>
            </div>
            <div class="bestCapsule_right">
              <div class="bestTitle">
                <h2>두잔의 명작 캡슐 3선</h2>
                <span>두잔에서 가장 인기가 많은 명작 캡슐 BEST3를 소개합니다.</span>
              </div>
              <div class="bestOption">
                <div class="option">
                  <img src="../images/capsule.png" alt="">
                  <div>name</div>
                </div>
                <div class="option">
                  <img src="../images/capsule2.png" alt="">
                  <div>name</div>
                </div>
                <div class="option">
                  <img src="../images/capsule3.png" alt="">
                  <div>name</div>
                </div>
              </div>
            </div>
          </div>

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
              <div class="time morning">
                <img class="time_capsule" src="../images/capsule.png" alt="">
              </div>
              <div class="time afternoon">
                <img class="time_capsule" src="../images/capsule2.png" alt="">
              </div>
              <div class="time evening">
                <img class="time_capsule" src="../images/capsule3.png" alt="">
              </div>
            </div>
            <div class="signature_explamation">
              <p>
                아침, 점심, 저녁이라는 삼시를 테마로<br>
                시간대 별 마시기 좋은 원두와 로스팅 단계를 선정해 탄생한<br>
                두잔의 시그니처 메뉴<br>
                <span>아침 · 점심 · 저녁</span>
              </p>
              <p>
                1st(10개입) 균일가 9,999원
              </p>
            </div>
            
          </div>

          <div class="signature_Origin">
            <div class="origin_left">
               <img src="../images/capsule.png" alt="">
               <button>자세히 보기</button>
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
              <div class="price">9,999 원</div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>로스팅</strong>
                </h3>
                <div class="progress">
                  <div class="progress-bar color-1" role="progressbar" aria-valuenow="70"
                  aria-valuemin="0" aria-valuemax="100" style="width:70%">
                    <span>70% Complete</span>
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
                    <span>70% Complete</span>
                  </div>
                </div>   
              </div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>산미</strong>
                </h3>
                <div class="progress">
                  <div class="progress-bar color-3" role="progressbar" aria-valuenow="70"
                  aria-valuemin="0" aria-valuemax="100" style="width:70%">
                    <span>70% Complete</span>
                  </div>
                </div>   
              </div>
            </div>
          </div>
          <div class="signature_Origin">
            <div class="origin_left">
               <img src="../images/capsule2.png" alt="">
               <button>자세히 보기</button>
            </div>
            <div class="origin_right">
              <div class="originTitle">두잔 시그니처 블랜드 / 로스팅 시티</div>
              <div class="origin_explanation">
                <p>
                  마일드하고 부드러운 맛이 특징인 브라질 원두 산토스를<br>
                  사용하여 산미가 억제되고 쓴맛과 단맛이 증가해<br>
                  전체적으로 균형잡힌 맛을 느낄 수 있는<br>
                  두잔의 대표 시그니처 메뉴입니다.
                </p>
              </div>
              <div class="price">9,999 원</div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>로스팅</strong>
                </h3>
                <div class="progress">
                  <div class="progress-bar color-1" role="progressbar" aria-valuenow="70"
                  aria-valuemin="0" aria-valuemax="100" style="width:70%">
                    <span>70% Complete</span>
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
                    <span>70% Complete</span>
                  </div>
                </div>   
              </div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>산미</strong>
                </h3>
                <div class="progress">
                  <div class="progress-bar color-3" role="progressbar" aria-valuenow="70"
                  aria-valuemin="0" aria-valuemax="100" style="width:70%">
                    <span>70% Complete</span>
                  </div>
                </div>   
              </div>
            </div>
          </div>

        </div>
      </div>
      <div id="section4">

      </div>
      <div id="section5">
        <div class="cont">
          <div class="section-title">
            <img src="../images/binder.png" alt="">
            <p class="title">인기상품 모아보기</p>
            <img src="../images/binder.png" alt="">
          </div>
          <div class="goods-list">
            <ul>
              <li>
                <img class="goods best" src="../images/goods.png" alt="">
                <div class="goodsName">name</div>
                <div class="goodPrice">price</div>
              </li>
              <li>
                <img class="goods best" src="../images/goods.png" alt="">
                <div class="goodsName">name</div>
                <div class="goodPrice">price</div>
              </li>
              <li>
                <img class="goods best" src="../images/goods.png" alt="">
                <div class="goodsName">name</div>
                <div class="goodPrice">price</div>
              </li>
              <li>
                <img class="goods best" src="../images/goods.png" alt="">
                <div class="goodsName">name</div>
                <div class="goodPrice">price</div>
              </li>
              <li>
                <img class="goods best" src="../images/goods.png" alt="">
                <div class="goodsName">name</div>
                <div class="goodPrice">price</div>
              </li>
              <li>
                <img class="goods best" src="../images/goods.png" alt="">
                <div class="goodsName">name</div>
                <div class="goodPrice">price</div>
              </li>
              <li>
                <img class="goods best" src="../images/goods.png" alt="">
                <div class="goodsName">name</div>
                <div class="goodPrice">price</div>
              </li>
              <li>
                <img class="goods best" src="../images/goods.png" alt="">
                <div class="goodsName">name</div>
                <div class="goodPrice">price</div>
              </li>
              <li>
                <img class="goods best" src="../images/goods.png" alt="">
                <div class="goodsName">name</div>
                <div class="goodPrice">price</div>
              </li>
              <li>
                <img class="goods best" src="../images/goods.png" alt="">
                <div class="goodsName">name</div>
                <div class="goodPrice">price</div>
              </li>
              <li>
                <img class="goods best" src="../images/goods.png" alt="">
                <div class="goodsName">name</div>
                <div class="goodPrice">price</div>
              </li>
              <li>
                <img class="goods best" src="../images/goods.png" alt="">
                <div class="goodsName">name</div>
                <div class="goodPrice">price</div>
              </li>
            </ul>
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
            <span class="tell"><img src="../images/tell.png" alt=""></span><span id="tell_number">02-456-789</span><br>
            <span class="footer_bold">상담시간  </span>10:00 ~ 18:00<br>
            <span class="footer_bold">문자상담  </span>카카오톡 플러스 친구 등록<br>
            반품 안내는 해당 상품 페이지를 참고해주세요
          </p>
        </div>
  
        <div class="company">
          <p class="footer_title">회사 정보</p>
          <p class="footer_text">
            <span class="footer_bold">회사명</span>(주)두잔 / 두 잔의 여유<br>
            <span class="footer_bold">대표</span>서민희<br>
            <span class="footer_bold">대표전화</span>02-456-789<br>
            <span class="footer_bold">주소</span>서울특별시 마포구<br>
            <span class="footer_bold">이메일</span>alslalsl_06@naver.com<br>
          </p>
        </div>
  
        <div class="delivery">
          <p class="footer_title">배송안내</p>
          <p class="footer_text">
            CJ 대한통운(TEL 1588-4321)<br>
            배송 상황은 택배사 홈페이지를 참조해주세요<br>
            <a href="#">배송 상황 확인하기></a>
          </p>
        </div>
      </div>
      <div class="footer3">
        <div class="shopping_menu">
          <p class="footer_title">쇼핑 메뉴</p>
          <p class="footer_text">
            <a href="#" id="shopping_text">자주 묻는 질문</a><br>
            <a href="#" id="shopping_text">문의 게시판</a>
          </p>
        </div>
        <div class="SNS">
          <p class="footer_title">SNS</p><br>
          <div class="SNSicon">
            <div><a href="#"><img src="../images/insta.png" alt=""></a></div>
            <div><a href="#"><img src="../images/twitter.png" alt=""></a></div>
            <div><a href="#"><img src="../images/youtube.png" alt=""></a></div>
            <div><a href="#"><img src="../images/naver.png" alt=""></a></div>
          </div>
        </div>
      </div>
    </footer>
  </div>
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  <script src="../JS/navEvent.js"></script>
  <script>
    $('.kvList').slick({
      infinite: true,
      slidesToShow: 1,
      slidesToScroll: 1,
      autoplay: true,
      autoplaySpeed: 5000,
      pauseOnHover: false,
      dots:true,
      appendDots: $('#section1 .dot'),
      prevArrow: $('#section1 .prev'),
      nextArrow: $('#section1 .next')
    });

var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = thisd.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}

    AOS.init({
		duration: 1000,
      });

  </script>
</body>
</html>