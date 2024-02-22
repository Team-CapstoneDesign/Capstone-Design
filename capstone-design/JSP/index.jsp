<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
  <title>capstone - dojan main page</title>
  <link rel="stylesheet" href="../css/style.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
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
        <input type="text" placeholder="�˻�">
        <div class="topmenuWrap">
          <ul class="topmenu">
            <li>
              <a>ĸ�� Ŀ����</a>
            </li>
            <li>
              <a>���� ĸ��</a>
              <div class="submenu">
                <ul id="productMenu">
                  <li><a href="./goods/viewProduct.jsp?ctgType=season">��������</a></li>
                  <li><a href="./goods/viewProduct.jsp?ctgType=signature">�ñ״�ó</a></li>
                  <li><a href="./goods/viewProduct.jsp?ctgType=blending">����</a></li>
                  <li><a href="./goods/viewProduct.jsp?ctgType=original">��������</a></li>
                  <li><a href="./goods/viewProduct.jsp?ctgType=decaf">��ī����</a></li>
                  <li><a href="./goods/viewProduct.jsp?ctgType=beveridge">�������� / ��Ŀ��</a></li>
                  <li><a href="">���� ��Ű��</a></li>
                </ul>
              </div>
            </li>
            <li>
              <a>Ŀ�� �̾߱�</a>
              <div class="submenu">
                <ul id="productMenu">
                  <li><a href="#">ĸ�� ���� ����</a></li>
                  <li><a href="#">���μҰ�</a></li>
                  <li><a href="#">Ŀ�� ���� ������</a></li>
                  <li><a href="#">���� ��︮�� Ŀ��</a></li>
                </ul>
              </div>
            </li>
            <li>
              <a>���� �̾߱�</a>
              <div class="submenu">
                <ul id="productMenu">
                  <li><a href="#">�� ���� ����</a></li>
                  <li><a href="#">�� ���� ȯ�氡ġ</a></li>
                </ul>
              </div>
            </li>
          </ul>
        </div>
        <div class="nav_top">
       	<% if(id == null){
		%>		
          <span class="quick_menu"><a href="./member/login.jsp">�α���</a></span>
          <span class="quick_menu"><a href="">ȸ������</a></span>
          <span class="quick_menu"><a href="">������</a></span>
        <%
			} else{
		%>
		  <span class="quick_menu"><a href="">�α׾ƿ�</a></span>
          <span class="quick_menu"><a href="">����������</a></span>
          <span class="quick_menu"><a href="">������</a></span>
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
                <h2>������ ���� ĸ�� 3��</h2>
                <span>���ܿ��� ���� �αⰡ ���� ���� ĸ�� BEST3�� �Ұ��մϴ�.</span>
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
              <p>������ ù��° �ñ״�ó ĸ�� Ŀ��</p>
              <h2>���� ������</h2>
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
                ��ħ, ����, �����̶�� ��ø� �׸���<br>
                �ð��� �� ���ñ� ���� ���ο� �ν��� �ܰ踦 ������ ź����<br>
                ������ �ñ״�ó �޴�<br>
                <span>��ħ �� ���� �� ����</span>
              </p>
              <p>
                1st(10����) ���ϰ� 9,999��
              </p>
            </div>
            
          </div>

          <div class="signature_Origin">
            <div class="origin_left">
               <img src="../images/capsule.png" alt="">
               <button>�ڼ��� ����</button>
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
              <div class="price">9,999 ��</div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>�ν���</strong>
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
                  <strong>����</strong>
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
                  <strong>���</strong>
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
               <button>�ڼ��� ����</button>
            </div>
            <div class="origin_right">
              <div class="originTitle">���� �ñ״�ó ���� / �ν��� ��Ƽ</div>
              <div class="origin_explanation">
                <p>
                  ���ϵ��ϰ� �ε巯�� ���� Ư¡�� ����� ���� ���佺��<br>
                  ����Ͽ� ��̰� �����ǰ� ������ �ܸ��� ������<br>
                  ��ü������ �������� ���� ���� �� �ִ�<br>
                  ������ ��ǥ �ñ״�ó �޴��Դϴ�.
                </p>
              </div>
              <div class="price">9,999 ��</div>
              <div class="progress-wrap">
                <h3 class="progress-name">
                  <strong>�ν���</strong>
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
                  <strong>����</strong>
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
                  <strong>���</strong>
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
            <p class="title">�α��ǰ ��ƺ���</p>
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
            <span class="tell"><img src="../images/tell.png" alt=""></span><span id="tell_number">02-456-789</span><br>
            <span class="footer_bold">���ð�  </span>10:00 ~ 18:00<br>
            <span class="footer_bold">���ڻ��  </span>īī���� �÷��� ģ�� ���<br>
            ��ǰ �ȳ��� �ش� ��ǰ �������� �������ּ���
          </p>
        </div>
  
        <div class="company">
          <p class="footer_title">ȸ�� ����</p>
          <p class="footer_text">
            <span class="footer_bold">ȸ���</span>(��)���� / �� ���� ����<br>
            <span class="footer_bold">��ǥ</span>������<br>
            <span class="footer_bold">��ǥ��ȭ</span>02-456-789<br>
            <span class="footer_bold">�ּ�</span>����Ư���� ������<br>
            <span class="footer_bold">�̸���</span>alslalsl_06@naver.com<br>
          </p>
        </div>
  
        <div class="delivery">
          <p class="footer_title">��۾ȳ�</p>
          <p class="footer_text">
            CJ �������(TEL 1588-4321)<br>
            ��� ��Ȳ�� �ù�� Ȩ�������� �������ּ���<br>
            <a href="#">��� ��Ȳ Ȯ���ϱ�></a>
          </p>
        </div>
      </div>
      <div class="footer3">
        <div class="shopping_menu">
          <p class="footer_title">���� �޴�</p>
          <p class="footer_text">
            <a href="#" id="shopping_text">���� ���� ����</a><br>
            <a href="#" id="shopping_text">���� �Խ���</a>
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