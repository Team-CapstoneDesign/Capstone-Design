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

      <div id="start-screen">
        <div class="startContent">

          <div class="background" id="startBackground">
            <img id="content1" class="start_content content1" src="../../images/custome_start1.png" alt="">
            <img id="content2" class="start_content content2" src="../../images/custome_start2.png" alt="">
            <img id="content3" class="start_content content3" src="../../images/custome_start3.png" alt="">
            <img id="content4" class="start_content content4" src="../../images/custome_start4.png" alt="">

            <img id="content5" class="start_content content5" src="../../images/custome_start5.png" alt="">
            <img id="content6" class="start_content content6" src="../../images/custome_start6.png" alt="">
            <img id="content7" class="start_content content7" src="../../images/custome_start7.png" alt="">
          </div>
          <img id="slider_left" class="section_slider" src="../../images/section_slider.png" alt="">
          <img id="slider_right" class="section_slider" src="../../images/section_slider.png" alt="">

          <div class="cont">

            <button id="startBtn">캡슐 만들기</button>
          </div>
        </div>
      </div>
      <div class="custome_section" id="select-coffee" style="display: none;">
        <div class="cont">
          <div class="coffee_content">
            <div class="coffee_left">
              <ul>
                <li class="customeRadio" id="coffee-checkbox">

                </li>
              </ul>
            </div>
            <div class="coffee_right">
              <h2 class="base_h2">베이스 원두 선택하기</h2>
              <div>
                커피 맛의 중심이 될 베이스 원두를 선택해주세요. 원두별 향과 맛이 다른 점을 유의해주세요.
              </div>
              <div class="coffee_svg">
                <?xml version="1.0" encoding="utf-8"?>
                <!-- Generator: Adobe Illustrator 22.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
                  y="0px" viewBox="0 0 310 215" style="enable-background:new 0 0 310 215;" xml:space="preserve">
                  <style type="text/css">
                    .st0 {
                      fill: none;
                      stroke: #fff;
                      stroke-width: 13;
                      stroke-miterlimit: 10;
                    }

                    .st1 {
                      fill: none;
                      stroke: #fff;
                      stroke-width: 19;
                      stroke-miterlimit: 10;
                    }

                    .st2 {
                      fill: #7F4F21;
                    }

                    .st3 {
                      fill: #C9A063;
                    }
                  </style>
                  <g id="레이어_1">

                    <image style="display:none;overflow:visible;opacity:0.22;" width="243" height="191" xlink:href="data:image/jpeg;base64,/9j/4AAQSkZJRgABAgEANwA3AAD/7AARRHVja3kAAQAEAAAAHgAA/+4AIUFkb2JlAGTAAAAAAQMA
    EAMCAwYAAASZAAAK4wAAEZP/2wCEABALCwsMCxAMDBAXDw0PFxsUEBAUGx8XFxcXFx8eFxoaGhoX
    Hh4jJSclIx4vLzMzLy9AQEBAQEBAQEBAQEBAQEABEQ8PERMRFRISFRQRFBEUGhQWFhQaJhoaHBoa
    JjAjHh4eHiMwKy4nJycuKzU1MDA1NUBAP0BAQEBAQEBAQEBAQP/CABEIAL8A8wMBIgACEQEDEQH/
    xACsAAADAAMBAQAAAAAAAAAAAAAAAQIDBQYEBwEBAQEBAQAAAAAAAAAAAAAAAAECAwQQAAIBAwIF
    AwQCAwEAAAAAAAECABEDBBIFECExExQgIgYwMxUWMiNAQTQkEQABAwAHAwkHAwIHAQAAAAABABEC
    ITFBcZESAxBRMiBhgaGxwSJyMzDRktITIwThQlJic0CCwuJDgxQkEgEBAQAAAAAAAAAAAAAAAABw
    UCH/2gAMAwEAAhEDEQAAAOxmsfHoskUCENpq0IQ2AAgAcsqCkmyRyMQkZUQUqQhBllyYdR6uOOmN
    L6I2JrGuyNaGzesDYPWhsTXBsTXBsb1gmynwYDc3yuSu8rz+oU0DAEAZMWXGms4vtOLjqdzpdrNU
    QRZKLMYZVAWQFkBkUJL8+XBXJ4c3nr27HnXXf+zhOpPfQhiEyTQajjOz46Xp9nq9pNiazkEwKCRA
    wYhpRzktXl9fjs5ScuGzo9Z1Waz536a8Ev0bNpN7bAwuahnU8d2vHzW09+s9c6ZzzvOvQYQznnRn
    McmZ+YPSeXKZLwTZ6MEq50hcXHb+3xe+55Tm+n5yOh6fmujsoQmTHctazj+u42a23r8XrnQaJ0sh
    jVA5hgDBylyRVpinNhvPTXGO8+9z6PTXMa3L7I6De4M9SAU2k1fGdvx016/fpdhOvpnETpleEPQe
    cMxhDMYGZTElz15aM/mfnvPXoyXliWy99zpet92SLVS0AVacsY+U7LTy8XkhzpJNPSEu0BKxA3IU
    S5KvEOdEu88fTaTubz9FzLLYiWEIoqqJXHliTldD9C5ZdTBc7SNNlOWoYxMEJpslRd53jnpGM++m
    2RAjQBSayAXNQhalawZ5OR1H0TWy8WbXUtBlxrU0llUImNHe26GzS9HdMwhogCgFQCABQ5VDQMQs
    kXM87ynY8+vkWxlda9gHgNgjXnvE6Hd6vYU5qUbQAmoJqVFIDEVUlw5CFZSBCR4fTJgXpDzvMGB5
    4JnOJjbRePICTQhigIY0Ag//2gAIAQIAAQUAPX6568a8Kyv0T1P1z1+qOB6/VHA9frnr9Iek9ZT1
    UlPWev1z1+uev1z1+v8A/9oACAEDAAEFAB/gD10+hXgOFZWVlZX1c4RKcAJSUmmUmmaYBKSnrEAm
    maZpmmaRNMIhEPEmVPAQSsrKysrwIjQ8aVmngDBAJSUlJSAQxoeIMrKQRTFPKUlJSGExjDxpKQdI
    IrQNNU1TVC0JhMPpHTgGgaapqmqapWE+msHprKysrK+k8B/gf//aAAgBAQABBQC6zd3uNTuPFdiC
    7Ca2MFxoLjTuNDcaG40Fx662mtpradxp3GgLEamAZ2gZjKsIXavcad9xO85gZoWae4Qs01tLtO7N
    NIGQBiCBSVSVSVSVSeyUQSqSqSqSqSqQOgmtajtmVtiF1nWVtGOsANTyjNzHOMOFxdVzTQ5mWuOM
    n5FZs3l+UWI3ynHU/tFgz9nsT9osT9osQfKLEb5RYp+0WJ+0WJ+z2J+z2J+z2J+y2DP2SxUfJ7Ah
    +TWIPktgRflGOBY321dvWb4ugtzJrCtSopG4XXZbuomb2xVdyvP5eHjd1321a/jxPx6z8es/HrBt
    6w7eKfjln45Z+OWfjln45Z4AE8ATwBPx60v4fbW+z2327KvHO217DIezUCGlQZ14OD3dJ1fIOSbi
    R5ex3FGQ95Ae4pmtZrWdxZ3FndWd1Z3FncWa1mtZ3FncWguLDcWu5uO1vDDy7d1Q1rOs2xj7pjKu
    NvWHlsiNfUOC3C82m6DU/If4bitcvZbY79xBq0iaZSaYRAOemaZSUlJphHJRNIrua/1buo8vtAKx
    i5TrNv3K7jvtW7XnxO0oErL3O6BPkddGfXytmJ79zVqo1PdPdPdKNNLCe6e6e6UaUae6e6IrGFWr
    uertbvq8rDK3cjF2e3dXN2XIS+QwmPnX7NvFybd60RKS790T5F/DOH/p2hqXmap18i81wPA8Z+Xc
    ncgea5qhea5beF+e5NW1ugrk7atM/bLlLeRhm7ay8Q4q3Hq2yZIe+eF2ndE+RV0Z5bydtyLq3WzL
    9fMvzy708q9PLvTzL8OZfI8q/PLvzy788y/PNvzy7xnl3pbzL0OZfrm5N5re4XLjX9tJOdtwGgu+
    j5HjWrdi4oDfHnfzdVeF8E3B1+QKdGf/ANOEP7G6wCAGEQxRU6TCIeGky2h0tbaiikI55QOjN+9t
    /wD3bXytlTo3/Jt3LN6y9x9hU+XQrwusTdB93yBzo3Bj5WCK3HXn/sGk1SsMXkS5hMPEXSkN0kBj
    K88u4dGbcPewUAy9lUXbWTkvaXcc25cRst1OyY6rfcc6S790AzfwdG48svb/ALlz+VDTgII49tDK
    GU4mCkQiErXMZdGYR3sANbzbO54SDOyVuZLXEMxcLIyLOJaa2jEcL3K6Om+LqTdFpmbef7WXUekP
    ASsY1FOFZXgFrKRI3XLPsy/u6tAGSHhvAnD2xsptl2lrODr5V4XqG7/rdFLLu9thn4N4rdXIWnkW
    Z5FieRYnkWJ5NieTZnk2J5FmeRZnkWJ5FiHItV8i3EyLcbIt6sm8hTIdTct2XuGxtd8ixtBljAwb
    RIKH2UNOFzldrMm0zjecW5+QT2P3lELgnWJrE1iahNQmsTUJqE1idwQXVndWJdWNdXU5DBrbMds2
    6/5Fu21gd9AOsBCwAhmPC990RQGm5Yth8u7ya0quoH9rqBABCBFAoJQSglBKCaRNIlBBymlTF5m3
    bRlxceyltmLTSIOUPPhQGUEvj+0fwcUln7fyHAyzi20bHHWXAYnR1LBEYB2BX0lSZqFERjNQUYdq
    5dfZcHKOGoIXiYvUjhdH9taRlDTuNbmbh2su1ve149nK1FbtA0KhYHMViQVFKSnoBpAoqbjWprLv
    tGzYvfxLS4lomV9C8ix4XfunolRNKmCgmRi2Lz7ltzq12xkJArgFZRhAQTQQj0AVmhyLOJlXBg7Z
    XHt2bNst14jgZXhe+6OZurSC5pF0VW3c7Yv2PItZOxdyblt3jXUvcwdYW3pOrjTgH0jC2zuvibR2
    Ap7QK6ox7Z9J5ynC990AadTPNKxCWLItVdtQ903y2ncVQCnIMeVT6QAZt1pAGYiEVLOwCgOKQ+he
    ZIHC8P7RbaXGEVSwa4CBzmkqUuKZvG33sm8vx3NYpsGZbH6/mCN8ezWg+P5qm5sOYwHx/Np+v5gn
    67mtMLGuWkZxACwppg5widJ1C/1QsHlaxeUrL7EXQx0A64nJVUEsdJJqiikbGt3FXAsqWwbRPgWT
    PAsifj7Jh26wIu3WKPteOFGBZWLbVSyiLyUOWijlU1IrKkEjXNIWaQJ0lZcdFuF1K2gJdVy6sBHI
    YhGjKYlQjVYW/aK1jBjAryjGFLtdN0wAidSVYRT7bQUG6rFlU1ug1C+0KwhDGUNCDKGf/9oACAEC
    AgY/AED/2gAIAQMCBj8Am4J//9oACAEBAQY/AJUmsqs4qs4qsqs4qs4qs4qs4qs4qs4qs4qs4qs4
    qs4qs4qs4qs4p8xxVZVZxXEcVWVWcVWcV+q/VVnFVnFPmOKrOKrNW9TfedlITEsqOW9HKrVapZWK
    gp01DqgKrZXyJ3lXKJMTLM9XMjpnRkSGpcWhehPEJvoTxC9CeIXoTxC9CeIXoTxC9CeIXoTxC9Ce
    IXoTxC9CeIXoTxC9CeIT/RniF6MsQvQniF6E8QvRniE30J4hQiNKQzHeESAQ3Lm28qlaLWmXcp3D
    sTGMj4XofmXpz61wT61wT61wT61wT61wT61wT61wT61wT61wT61wT61wT61RCXWuCeBXBPrXBLrQ
    IhIOWpBWUUUPStESYRzUllPNOIpFoVEgd1I5U/MV0rQvl3KVw7Ef7ffFW8q1W8q1W7IebuQ8g7So
    kvQiJZqdwWmSJUMaue9SjpCbxDnMAO9fUhw1U8yy2jbK8oLQvl3KVw7Ef7ffFdH+Ah5u5DyDtKzO
    aNgiAGCnKMYnMAKXQkYRHiO/3r6jlzS1+2V5QWhfLuUrh2I/2++K6OVV7A7IebuQ8g7StPTPizFs
    ptUj/wCaMmO4LVMPxm04kkNlYAdK8FG9lk+tKFJLAlacRPNIwBIp3KrZO8oLQvl3KVw7Ef7ffHZU
    qlUqlUqlUqlUqtlSqRoVSj5u5DyjtK0S9UlOi0di1J5mzRkWbmUZGWfMWqZVLThlb7db7hs6VK87
    NC+XcpXDsRYt4N3OFxDALiGAXEMAq+oLiGAXEMAmzDAKvqC4uoLiGAXEMAuIYBcQwC4hgEfEMAuI
    YBRpt3cyc/xFl60X/kptvCMP2sy0TCJcyL0k2JjQoA1ZD2bZXoBaF8u5SuHYj5e8ctuWTtF66AtH
    zKd47EZWMStIReiRruWaLM1qgLch7FSuhT5iQulaF8u5SuHYj5e8ct+UwAVQ2xotVVgWlO3M61Ca
    GkKrlqwABEQQCblAGIDE1OmEQtPUBLnTqvCC6FO87NG+XcpXDsR8neF0co+wOyNNq6AtLUnRAScn
    mRB1gH5j7lqzhMmEi4NNSrQ1NLTzwch6LL1p5os0QDhtneUFo3y7lMc0exHyd4Tum5LewKKjeugL
    NW1ifKzc6Zq6FKI1BHKHqfvQgdUHxSLt+qytVQ922Tbzs06CWJsuU/Cao2cyLzbw7+cKnUGIVOrF
    /MF6sfiC9WHxBerH4gvVj8QXqx+IL1YfEF6sfiC9WPxBerD4gvVh8QVGrH4gvUj8QR+5H4gj9yPx
    BBpg07wqwaN6jEQMs1QAJdH/AOSZ/wCuXuUDP8M1h30zvuRMdCEHFkQFl0RlhujUqGzde2fPI7Is
    RQ9anSKo79w5kSbqFUUT7K1Wq1Ggo0FME4ZfjyzRag1ndciJsXpoTMXVCYp9nQp3nZTSpSlFywtO
    69Ft5TyDl0Y2OUG9q5FOxyFpTjFpCMSC53KmlPypXlNzIOgotp/8otj/ABlzrJrDLIlwK6KrE4tQ
    QCYKkIgcpwmtqRYLKaCFIQDkBzUO1FofvNo3DnQBrAY8vpU7ymVNiyhmG9DT1DIASEvCzuxFoO9Q
    jGUyDpg0kfylzI6YqiSBvoVNios9k68LF96c2mllPx6nDvG8f0r6WmSYuZPKk03N7DpU7yudHN1p
    2BXiq50Jy0YahAbMYiXRUtecPxTEZzllHTagysICH25xd/2kJpAg2uqBgqiEzuquTUvDEk2MEfsa
    k2/oJ7lpGf4jytMtOmvnCJjCMCaHAAVFXN7Gd5QQTM6F6ys9LqUM2XOxdnal1H77M/7P9y1h9TP9
    OL8LP4c28qrrT1WLM7tymZaP3cufKeF2fpUh9bNmb9rVf5kNOvLbUmdllrt9jK8p7WdeIuyqTSpC
    qWV6AqaWX5Rb9n+hUex/Gk1LQPUFQnNaoKzSpPKp2dKneU9DVoJwmD7M5qRrX5E4SiBOLDMT/ACw
    FMJ6WMvkWWU9N66DL5Vx6WMvlVE9Kjnl8qDz0qOeXyoAT08ZfKuPSxl8q49LGXypxPSxl8i0BIgm
    AiCz2C5BOLU5207HlS+5OE22V5T8yps3JtjDaZSJBkKWa5OJSxHuVcsR7kzyxHuVBliPcuKVPOPc
    uKWI9yHiliPcnzTxHuTAyxHuQAehDYx2NsZMbNyYJ9s8wcubHRYGkbkXbqRMTReqRgHTii+hO4a8
    IN2qnnTRcHBNKkveqAVR2r9V+qoNF6t6SmPvTKntTIu3UvBU1hZB2xCDdRVYe8Kmm4uv15H/2Q=="
                      transform="matrix(1.3045 0 0 1.3045 -3.5 -16.2498)">
                    </image>
                  </g>
                  <g id="레이어_2">
                    <path class="st0" d="M132.7,6.8H27v105.7c0,24.4,11.4,50.6,31.2,64.9c7.5,5.4,16.2,9.5,26,10.9v20.2h48.5h48.5v-20.2
        c9.8-1.3,18.5-5.5,26-10.9c19.8-14.3,31.2-40.4,31.2-64.9V6.8H132.7z" />
                    <path class="st1" d="M235.9,27.7c0,0,47.2-8.6,47.2,44s-48.8,54.4-48.8,54.4" />
                    <path class="st2" d="M221.5,102h-88.9h-0.8H43c0,0-5.2,40.3,22.2,62c9.2,7.3,20.8,11,32.5,11h34.1h0.8h34.1
        c11.8,0,23.3-3.7,32.5-11C226.7,142.3,221.5,102,221.5,102z" />

                  </g>
                </svg>



              </div>

              <div id="select-coffee-explain"></div>
              <div class="coffee-progress">
                <div class="progress-wrap">
                  <h3 class="progress-name">
                    <strong>바디감</strong>
                  </h3>
                  <div class="progress">
                    <div id="body_progress" class="progress-bar color-1" role="progressbar" aria-valuenow="65"
                      aria-valuemin="0" aria-valuemax="100" style="width:85%">
                    </div>
                  </div>
                </div>
                <div class="progress-wrap">
                  <h3 class="progress-name">
                    <strong>향미</strong>
                  </h3>
                  <div class="progress">
                    <div id="smell_progress" class="progress-bar color-2" role="progressbar" aria-valuenow="50"
                      aria-valuemin="0" aria-valuemax="100" style="width:50%">
                    </div>
                  </div>
                </div>
                <div class="progress-wrap">
                  <h3 class="progress-name">
                    <strong>신맛</strong>
                  </h3>
                  <div class="progress">
                    <div id="taste1_progress" class="progress-bar color-3" role="progressbar" aria-valuenow="30"
                      aria-valuemin="0" aria-valuemax="100" style="width:30%">
                    </div>
                  </div>
                </div>
                <div class="progress-wrap">
                  <h3 class="progress-name">
                    <strong>쓴맛</strong>
                  </h3>
                  <div class="progress">
                    <div id="taste2_progress" class="progress-bar color-3" role="progressbar" aria-valuenow="30"
                      aria-valuemin="0" aria-valuemax="100" style="width:30%">
                    </div>
                  </div>
                </div>
                <div class="progress-wrap">
                  <h3 class="progress-name">
                    <strong>단맛</strong>
                  </h3>
                  <div class="progress">
                    <div id="taste3_progress" class="progress-bar color-3" role="progressbar" aria-valuenow="30"
                      aria-valuemin="0" aria-valuemax="100" style="width:30%">
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="buttonWrap">
              <button class="custome_btn" id="coffee-next">다음</button>
            </div>
          </div>
        </div>

      </div>

      <div class="custome_section" id="select-blend" style="display: none;">
        <div class="cont">
          <div class="blend_content">
            <div class="blend_top">
              <div class="blend_top_left">
                <h2 class="blend_h2">블렌드 원두 선택하기</h2>
                <div>
                  두가지 이상의 원두가 혼합되어 맛과 향이 더욱 풍부해집니다. 최대 3가지 원두를 선택할 수 있고, 선택하지 않을 경우 베이스 원두로만 제작됩니다.
                </div>
                <div class="select_blend_list">
                  <ul>
                    <div class="selectOption1"></div>
                    <div class="selectOption2"></div>
                    <div class="selectOption3"></div>

                  </ul>
                </div>
              </div>
              <div class="blend_top_right">
                <div class="blend_svg">
                  <?xml version="1.0" encoding="utf-8"?>
                  <!-- Generator: Adobe Illustrator 22.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                  <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                    x="0px" y="0px" viewBox="0 0 310 215" style="enable-background:new 0 0 310 215;"
                    xml:space="preserve">
                    <style type="text/css">
                      .st0 {
                        fill: none;
                        stroke: #000000;
                        stroke-width: 13;
                        stroke-miterlimit: 10;
                      }

                      .st1 {
                        fill: none;
                        stroke: #000000;
                        stroke-width: 19;
                        stroke-miterlimit: 10;
                      }

                      .st2 {
                        fill: #7F4F21;
                      }

                      .st3 {
                        fill: #C9A063;
                      }
                    </style>
                    <g id="레이어_1">

                      <image style="display:none;overflow:visible;opacity:0.22;" width="243" height="191" xlink:href="data:image/jpeg;base64,/9j/4AAQSkZJRgABAgEANwA3AAD/7AARRHVja3kAAQAEAAAAHgAA/+4AIUFkb2JlAGTAAAAAAQMA
                    EAMCAwYAAASZAAAK4wAAEZP/2wCEABALCwsMCxAMDBAXDw0PFxsUEBAUGx8XFxcXFx8eFxoaGhoX
                    Hh4jJSclIx4vLzMzLy9AQEBAQEBAQEBAQEBAQEABEQ8PERMRFRISFRQRFBEUGhQWFhQaJhoaHBoa
                    JjAjHh4eHiMwKy4nJycuKzU1MDA1NUBAP0BAQEBAQEBAQEBAQP/CABEIAL8A8wMBIgACEQEDEQH/
                    xACsAAADAAMBAQAAAAAAAAAAAAAAAQIDBQYEBwEBAQEBAQAAAAAAAAAAAAAAAAECAwQQAAIBAwIF
                    AwQCAwEAAAAAAAECABEDBBIFECExExQgIgYwMxUWMiNAQTQkEQABAwAHAwkHAwIHAQAAAAABABEC
                    ITFBcZESAxBRMiBhgaGxwSJyMzDRktITIwThQlJic0CCwuJDgxQkEgEBAQAAAAAAAAAAAAAAAABw
                    UCH/2gAMAwEAAhEDEQAAAOxmsfHoskUCENpq0IQ2AAgAcsqCkmyRyMQkZUQUqQhBllyYdR6uOOmN
                    L6I2JrGuyNaGzesDYPWhsTXBsTXBsb1gmynwYDc3yuSu8rz+oU0DAEAZMWXGms4vtOLjqdzpdrNU
                    QRZKLMYZVAWQFkBkUJL8+XBXJ4c3nr27HnXXf+zhOpPfQhiEyTQajjOz46Xp9nq9pNiazkEwKCRA
                    wYhpRzktXl9fjs5ScuGzo9Z1Waz536a8Ev0bNpN7bAwuahnU8d2vHzW09+s9c6ZzzvOvQYQznnRn
                    McmZ+YPSeXKZLwTZ6MEq50hcXHb+3xe+55Tm+n5yOh6fmujsoQmTHctazj+u42a23r8XrnQaJ0sh
                    jVA5hgDBylyRVpinNhvPTXGO8+9z6PTXMa3L7I6De4M9SAU2k1fGdvx016/fpdhOvpnETpleEPQe
                    cMxhDMYGZTElz15aM/mfnvPXoyXliWy99zpet92SLVS0AVacsY+U7LTy8XkhzpJNPSEu0BKxA3IU
                    S5KvEOdEu88fTaTubz9FzLLYiWEIoqqJXHliTldD9C5ZdTBc7SNNlOWoYxMEJpslRd53jnpGM++m
                    2RAjQBSayAXNQhalawZ5OR1H0TWy8WbXUtBlxrU0llUImNHe26GzS9HdMwhogCgFQCABQ5VDQMQs
                    kXM87ynY8+vkWxlda9gHgNgjXnvE6Hd6vYU5qUbQAmoJqVFIDEVUlw5CFZSBCR4fTJgXpDzvMGB5
                    4JnOJjbRePICTQhigIY0Ag//2gAIAQIAAQUAPX6568a8Kyv0T1P1z1+qOB6/VHA9frnr9Iek9ZT1
                    UlPWev1z1+uev1z1+v8A/9oACAEDAAEFAB/gD10+hXgOFZWVlZX1c4RKcAJSUmmUmmaYBKSnrEAm
                    maZpmmaRNMIhEPEmVPAQSsrKysrwIjQ8aVmngDBAJSUlJSAQxoeIMrKQRTFPKUlJSGExjDxpKQdI
                    IrQNNU1TVC0JhMPpHTgGgaapqmqapWE+msHprKysrK+k8B/gf//aAAgBAQABBQC6zd3uNTuPFdiC
                    7Ca2MFxoLjTuNDcaG40Fx662mtpradxp3GgLEamAZ2gZjKsIXavcad9xO85gZoWae4Qs01tLtO7N
                    NIGQBiCBSVSVSVSVSeyUQSqSqSqSqSqQOgmtajtmVtiF1nWVtGOsANTyjNzHOMOFxdVzTQ5mWuOM
                    n5FZs3l+UWI3ynHU/tFgz9nsT9osT9osQfKLEb5RYp+0WJ+0WJ+z2J+z2J+z2J+y2DP2SxUfJ7Ah
                    +TWIPktgRflGOBY321dvWb4ugtzJrCtSopG4XXZbuomb2xVdyvP5eHjd1321a/jxPx6z8es/HrBt
                    6w7eKfjln45Z+OWfjln45Z4AE8ATwBPx60v4fbW+z2327KvHO217DIezUCGlQZ14OD3dJ1fIOSbi
                    R5ex3FGQ95Ae4pmtZrWdxZ3FndWd1Z3FncWa1mtZ3FncWguLDcWu5uO1vDDy7d1Q1rOs2xj7pjKu
                    NvWHlsiNfUOC3C82m6DU/If4bitcvZbY79xBq0iaZSaYRAOemaZSUlJphHJRNIrua/1buo8vtAKx
                    i5TrNv3K7jvtW7XnxO0oErL3O6BPkddGfXytmJ79zVqo1PdPdPdKNNLCe6e6e6UaUae6e6IrGFWr
                    uertbvq8rDK3cjF2e3dXN2XIS+QwmPnX7NvFybd60RKS790T5F/DOH/p2hqXmap18i81wPA8Z+Xc
                    ncgea5qhea5beF+e5NW1ugrk7atM/bLlLeRhm7ay8Q4q3Hq2yZIe+eF2ndE+RV0Z5bydtyLq3WzL
                    9fMvzy708q9PLvTzL8OZfI8q/PLvzy788y/PNvzy7xnl3pbzL0OZfrm5N5re4XLjX9tJOdtwGgu+
                    j5HjWrdi4oDfHnfzdVeF8E3B1+QKdGf/ANOEP7G6wCAGEQxRU6TCIeGky2h0tbaiikI55QOjN+9t
                    /wD3bXytlTo3/Jt3LN6y9x9hU+XQrwusTdB93yBzo3Bj5WCK3HXn/sGk1SsMXkS5hMPEXSkN0kBj
                    K88u4dGbcPewUAy9lUXbWTkvaXcc25cRst1OyY6rfcc6S790AzfwdG48svb/ALlz+VDTgII49tDK
                    GU4mCkQiErXMZdGYR3sANbzbO54SDOyVuZLXEMxcLIyLOJaa2jEcL3K6Om+LqTdFpmbef7WXUekP
                    ASsY1FOFZXgFrKRI3XLPsy/u6tAGSHhvAnD2xsptl2lrODr5V4XqG7/rdFLLu9thn4N4rdXIWnkW
                    Z5FieRYnkWJ5NieTZnk2J5FmeRZnkWJ5FiHItV8i3EyLcbIt6sm8hTIdTct2XuGxtd8ixtBljAwb
                    RIKH2UNOFzldrMm0zjecW5+QT2P3lELgnWJrE1iahNQmsTUJqE1idwQXVndWJdWNdXU5DBrbMds2
                    6/5Fu21gd9AOsBCwAhmPC990RQGm5Yth8u7ya0quoH9rqBABCBFAoJQSglBKCaRNIlBBymlTF5m3
                    bRlxceyltmLTSIOUPPhQGUEvj+0fwcUln7fyHAyzi20bHHWXAYnR1LBEYB2BX0lSZqFERjNQUYdq
                    5dfZcHKOGoIXiYvUjhdH9taRlDTuNbmbh2su1ve149nK1FbtA0KhYHMViQVFKSnoBpAoqbjWprLv
                    tGzYvfxLS4lomV9C8ix4XfunolRNKmCgmRi2Lz7ltzq12xkJArgFZRhAQTQQj0AVmhyLOJlXBg7Z
                    XHt2bNst14jgZXhe+6OZurSC5pF0VW3c7Yv2PItZOxdyblt3jXUvcwdYW3pOrjTgH0jC2zuvibR2
                    Ap7QK6ox7Z9J5ynC990AadTPNKxCWLItVdtQ903y2ncVQCnIMeVT6QAZt1pAGYiEVLOwCgOKQ+he
                    ZIHC8P7RbaXGEVSwa4CBzmkqUuKZvG33sm8vx3NYpsGZbH6/mCN8ezWg+P5qm5sOYwHx/Np+v5gn
                    67mtMLGuWkZxACwppg5widJ1C/1QsHlaxeUrL7EXQx0A64nJVUEsdJJqiikbGt3FXAsqWwbRPgWT
                    PAsifj7Jh26wIu3WKPteOFGBZWLbVSyiLyUOWijlU1IrKkEjXNIWaQJ0lZcdFuF1K2gJdVy6sBHI
                    YhGjKYlQjVYW/aK1jBjAryjGFLtdN0wAidSVYRT7bQUG6rFlU1ug1C+0KwhDGUNCDKGf/9oACAEC
                    AgY/AED/2gAIAQMCBj8Am4J//9oACAEBAQY/AJUmsqs4qs4qsqs4qs4qs4qs4qs4qs4qs4qs4qs4
                    qs4qs4qs4qs4p8xxVZVZxXEcVWVWcVWcV+q/VVnFVnFPmOKrOKrNW9TfedlITEsqOW9HKrVapZWK
                    gp01DqgKrZXyJ3lXKJMTLM9XMjpnRkSGpcWhehPEJvoTxC9CeIXoTxC9CeIXoTxC9CeIXoTxC9Ce
                    IXoTxC9CeIXoTxC9CeIT/RniF6MsQvQniF6E8QvRniE30J4hQiNKQzHeESAQ3Lm28qlaLWmXcp3D
                    sTGMj4XofmXpz61wT61wT61wT61wT61wT61wT61wT61wT61wT61wT61wT61RCXWuCeBXBPrXBLrQ
                    IhIOWpBWUUUPStESYRzUllPNOIpFoVEgd1I5U/MV0rQvl3KVw7Ef7ffFW8q1W8q1W7IebuQ8g7So
                    kvQiJZqdwWmSJUMaue9SjpCbxDnMAO9fUhw1U8yy2jbK8oLQvl3KVw7Ef7ffFdH+Ah5u5DyDtKzO
                    aNgiAGCnKMYnMAKXQkYRHiO/3r6jlzS1+2V5QWhfLuUrh2I/2++K6OVV7A7IebuQ8g7StPTPizFs
                    ptUj/wCaMmO4LVMPxm04kkNlYAdK8FG9lk+tKFJLAlacRPNIwBIp3KrZO8oLQvl3KVw7Ef7ffHZU
                    qlUqlUqlUqlUqtlSqRoVSj5u5DyjtK0S9UlOi0di1J5mzRkWbmUZGWfMWqZVLThlb7db7hs6VK87
                    NC+XcpXDsRYt4N3OFxDALiGAXEMAq+oLiGAXEMAmzDAKvqC4uoLiGAXEMAuIYBcQwC4hgEfEMAuI
                    YBRpt3cyc/xFl60X/kptvCMP2sy0TCJcyL0k2JjQoA1ZD2bZXoBaF8u5SuHYj5e8ctuWTtF66AtH
                    zKd47EZWMStIReiRruWaLM1qgLch7FSuhT5iQulaF8u5SuHYj5e8ct+UwAVQ2xotVVgWlO3M61Ca
                    GkKrlqwABEQQCblAGIDE1OmEQtPUBLnTqvCC6FO87NG+XcpXDsR8neF0co+wOyNNq6AtLUnRAScn
                    mRB1gH5j7lqzhMmEi4NNSrQ1NLTzwch6LL1p5os0QDhtneUFo3y7lMc0exHyd4Tum5LewKKjeugL
                    NW1ifKzc6Zq6FKI1BHKHqfvQgdUHxSLt+qytVQ922Tbzs06CWJsuU/Cao2cyLzbw7+cKnUGIVOrF
                    /MF6sfiC9WHxBerH4gvVj8QXqx+IL1YfEF6sfiC9WPxBerD4gvVh8QVGrH4gvUj8QR+5H4gj9yPx
                    BBpg07wqwaN6jEQMs1QAJdH/AOSZ/wCuXuUDP8M1h30zvuRMdCEHFkQFl0RlhujUqGzde2fPI7Is
                    RQ9anSKo79w5kSbqFUUT7K1Wq1Ggo0FME4ZfjyzRag1ndciJsXpoTMXVCYp9nQp3nZTSpSlFywtO
                    69Ft5TyDl0Y2OUG9q5FOxyFpTjFpCMSC53KmlPypXlNzIOgotp/8otj/ABlzrJrDLIlwK6KrE4tQ
                    QCYKkIgcpwmtqRYLKaCFIQDkBzUO1FofvNo3DnQBrAY8vpU7ymVNiyhmG9DT1DIASEvCzuxFoO9Q
                    jGUyDpg0kfylzI6YqiSBvoVNios9k68LF96c2mllPx6nDvG8f0r6WmSYuZPKk03N7DpU7yudHN1p
                    2BXiq50Jy0YahAbMYiXRUtecPxTEZzllHTagysICH25xd/2kJpAg2uqBgqiEzuquTUvDEk2MEfsa
                    k2/oJ7lpGf4jytMtOmvnCJjCMCaHAAVFXN7Gd5QQTM6F6ys9LqUM2XOxdnal1H77M/7P9y1h9TP9
                    OL8LP4c28qrrT1WLM7tymZaP3cufKeF2fpUh9bNmb9rVf5kNOvLbUmdllrt9jK8p7WdeIuyqTSpC
                    qWV6AqaWX5Rb9n+hUex/Gk1LQPUFQnNaoKzSpPKp2dKneU9DVoJwmD7M5qRrX5E4SiBOLDMT/ACw
                    FMJ6WMvkWWU9N66DL5Vx6WMvlVE9Kjnl8qDz0qOeXyoAT08ZfKuPSxl8q49LGXypxPSxl8i0BIgm
                    AiCz2C5BOLU5207HlS+5OE22V5T8yps3JtjDaZSJBkKWa5OJSxHuVcsR7kzyxHuVBliPcuKVPOPc
                    uKWI9yHiliPcnzTxHuTAyxHuQAehDYx2NsZMbNyYJ9s8wcubHRYGkbkXbqRMTReqRgHTii+hO4a8
                    IN2qnnTRcHBNKkveqAVR2r9V+qoNF6t6SmPvTKntTIu3UvBU1hZB2xCDdRVYe8Kmm4uv15H/2Q=="
                        transform="matrix(1.3045 0 0 1.3045 -3.5 -16.2498)">
                      </image>
                    </g>
                    <g id="레이어_2">
                      <path class="st0" d="M132.7,6.8H27v105.7c0,24.4,11.4,50.6,31.2,64.9c7.5,5.4,16.2,9.5,26,10.9v20.2h48.5h48.5v-20.2
                        c9.8-1.3,18.5-5.5,26-10.9c19.8-14.3,31.2-40.4,31.2-64.9V6.8H132.7z" />
                      <path class="st1" d="M235.9,27.7c0,0,47.2-8.6,47.2,44s-48.8,54.4-48.8,54.4" />
                      <path class="st2" d="M221.5,102h-88.9h-0.8H43c0,0-5.2,40.3,22.2,62c9.2,7.3,20.8,11,32.5,11h34.1h0.8h34.1
                        c11.8,0,23.3-3.7,32.5-11C226.7,142.3,221.5,102,221.5,102z" />
                      <rect x="42.6" y="54" class="st3" width="179.3" height="44.7" />
                    </g>
                  </svg>
                </div>
              </div>

            </div>
            <div class="blend_bottom">
              <!--js로 커피 체크박스 추가-->
              <ul>
                <li>
                  <div id="blend-checkbox">
                    <input type="checkbox" id="blend_null" name="blendCoffee" onchange="updateSelectedOptions('선택안함')">
                    <label for="blend_null"></label>
                    <input type="checkbox" id="브라질 산토스blend" name="blendCoffee" value="브라질 산토스"
                      onchange="updateSelectedOptions('브라질 산토스')">
                    <label for="브라질 산토스blend"></label>
                    <input type="checkbox" id="콜롬비아 수프리모blend" name="blendCoffee" value="콜롬비아 수프리모"
                      onchange="updateSelectedOptions('콜롬비아 수프리모')">
                    <label for="콜롬비아 수프리모blend"></label>
                    <input type="checkbox" id="자메이카 블루마운틴blend" name="blendCoffee" value="자메이카 블루마운틴"
                      onchange="updateSelectedOptions('자메이카 블루마운틴')">
                    <label for="자메이카 블루마운틴blend"></label>
                    <input type="checkbox" id="에티오피아 예가체프blend" name="blendCoffee" value="에티오피아 예가체프"
                      onchange="updateSelectedOptions('에티오피아 예가체프')">
                    <label for="에티오피아 예가체프blend"></label>
                    <input type="checkbox" id="코스타리카 따라주blend" name="blendCoffee" value="코스타리카 따라주"
                      onchange="updateSelectedOptions('코스타리카 따라주')">
                    <label for="코스타리카 따라주blend"></label>
                    <input type="checkbox" id="탄자니아 AAblend" name="blendCoffee" value="탄자니아 AA"
                      onchange="updateSelectedOptions('탄자니아 AA')">
                    <label for="탄자니아 AAblend"></label>
                    <input type="checkbox" id="예멘 모카 마타리blend" name="blendCoffee" value="예멘 모카 마타리"
                      onchange="updateSelectedOptions('예멘 모카 마타리')">
                    <label for="예멘 모카 마타리blend"></label>
                    <input type="checkbox" id="하와이 코나blend" name="blendCoffee" value="하와이 코나"
                      onchange="updateSelectedOptions('하와이 코나')">
                    <label for="하와이 코나blend"></label>
                    <input type="checkbox" id="과테 말라 안티구아blend" name="blendCoffee" value="과테 말라 안티구아"
                      onchange="updateSelectedOptions('과테 말라 안티구아')">
                    <label for="과테 말라 안티구아blend"></label>
                    <input type="checkbox" id="파나마 게이샤blend" name="blendCoffee" value="파나마 게이샤"
                      onchange="updateSelectedOptions('파나마 게이샤')">
                    <label for="파나마 게이샤blend"></label>
                    <input type="checkbox" id="엘살바도르blend" name="blendCoffee" value="엘살바도르"
                      onchange="updateSelectedOptions('엘살바도르')">
                    <label for="엘살바도르blend"></label>
                    <input type="checkbox" id="케냐AAblend" name="blendCoffee" value="케냐AA"
                      onchange="updateSelectedOptions('케냐AA')">
                    <label for="케냐AAblend"></label>
                  </div>
                </li>
              </ul>

            </div>
          </div>
          <div class="blend_buttonWrap">
            <button class="custome_btn" id="blend-prev">이전</button>
            <button class="custome_btn" id="blend-next">다음</button>
          </div>
        </div>


      </div>
      <div class="custome_section" id="select-roasting" style="display: none;">
        <div class="cont">
          <div class="roasting_content">
            <h2 class="roasting_h2">로스팅 단계 설정</h2>
            <div class="roasting_explanation
            ">
              원두를 볶는 과정에서 커피의 맛과 향이 가미됩니다.<br> 7단계의 로스팅을 선택할 수 있고, 로스팅 단계가 높아질수록 쓴맛이 증가되고 산미가 줄어듭니다.
            </div>
            <div class="roastingPost" id="roasting-info">
              <div class="roasting_Num">
                <span id="roastingNum"></span>
              </div>

              <span id="roastingName"></span> <span id="roastingEx"></span>
            </div>
            <div class="roastingSlide">
              <input class="roasting-step" id="roasting-range" type="range" name="roasting" id="temp3" min="1" max="8"
                value="5" step="1" list="markers" required />
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
            <div class="roasting_btn">
              <button class="custome_btn" id="roasting-prev">이전</button>
              <button class="custome_btn" id="roasting-next">다음</button>
            </div>
          </div>
        </div>

      </div>
      <div class="custome_section" id="select-machine" style="display: none;">
        <div class="machine_content">
          <div class="cont">
            <h2 class="machine_h2">커피 머신 선택</h2>
            <div class="machineRadio" id="machine-radio">
              <input type="radio" id="nespresso-original" name="machine" value="네스프레소 오리지널"><label
                for="nespresso-original">
              </label> <input type="radio" id="nespresso-vertuo" name="machine" value="네스프레소 버츄오"><label
                for="nespresso-vertuo">
              </label> <input type="radio" id="dolceGusto" name="machine" value="돌체구스토"><label for="dolceGusto"></label>
              <input type="radio" id="illy" name="machine" value="일리"><label for="illy"></label> <input type="radio"
                id="kanu" name="machine" value="카누"><label for="kanu"></label>
              <input type="radio" id="keurig" name="machine" value="큐리그"><label for="keurig"></label>
            </div>
            <div class="machine_buttonWrap">
              <button class="custome_btn" id="machine-prev">이전</button>
              <button class="custome_btn" id="machine-next" onclick="customeResult()">완성</button>
            </div>
          </div>

        </div>

      </div>
      <form name="result" action="../cart/csIncart.jsp" class="custome_section" id="select-result"
        style="display: none;">
        <div class="cont">
          <div class="result_content">
            <h2 class="result_h2">캡슐 커피 완성</h2>
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
              <input class="custome_qty" type="number" name="customeQty" min="1" max="10" value="1">
              <input class="personalCoffeeName" type="text" name="customeName" placeholder="커피의 이름을 지어주세요">

            </div>
            <div id="hiddenInputRadio"></div>
            <div class="buttonWrap">
              <button class="custome_btn" onclick="location.href='custome.html'">처음으로
							돌아가기</button>
						<button class="custome_btn" onclick="checkCustomeValue()">장바구니에
							담기</button>
            </div>
          </div>

        </div>
      </form>
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