<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>두잔 상품 상세 조회</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/sub02.css">
<link rel="stylesheet" href="../../css/productDetail.css">

</head>
<body>
	<%
		String id = (String) session.getAttribute("sid");
		
	%>
	<div class="wrap">
		<div class="headerTitle">
			<a href="../index.jsp"><img class="logo" src="../../images/logo.png" alt=""></a>
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
					                  <li><a href="./viewProduct.jsp?ctgType=beverage">베버리지 / 논커피</a></li>
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
						<span class="quick_menu"><a href="">로그인</a></span>
						<span class="quick_menu"><a href="">회원가입</a></span>
						<span class="quick_menu"><a href="">고객센터</a></span>
					<%
						} else {
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
		
		<!-- 컨텐츠 -->
		<div class="sub_container" name="sub_product">
			<!-- 네비게이션 헤더 -->
			<div class="sub_section1" name="sub_header">
				<div class="sub_headerTitle">
				<div class="sub_subTilte">두잔 캡슐</div><br><br>
					<ul class="smap">
						<!-- 미니 네비게이션 -->
						<li><a href="index.html"><img
								src="../../images/smap/icon_home_w.png" alt="홈으로"></a></li>
						<li><img class="arrow" src="../../images/smap/icon_arrow_w.png"
							alt="하위메뉴"></li>
						<li class="en"><a href="index.html">두잔 캡슐</a></li>
						<li><img class="arrow" src="../../images/smap/icon_arrow_w.png"
							alt="하위메뉴"></li>
						<li><a href="index.html">상품분류</a></li>
						<li><img class="arrow" src="../../images/smap/icon_arrow_w.png"
							alt="하위메뉴"></li>
						<li><a href="index.html" class="this">상품명</a></li>
					</ul>
			</div>
		</div>

		<!-- 상품 소개 -->
		<div class="productDetail_view">
        <h2>두잔 시그니쳐 오리진</h2>
        <table>
            <caption>
                <details class="hide">
                    <summary>상품정보</summary>
                    판매가, 상품코드, 옵션 및 결제금액 안내
                </details>
            </caption>
            <colgroup>
            <col style="width: 173px;">
            <col>
            </colgroup>
            <tbody>
                <tr>
                    <th>로스팅 단계</th>
                    <td>하이</td>
                </tr>
                <tr>
                    <th>향미</th>
                    <td>smell + taste</td>
                </tr>
				<tr>
                    <th>상세 설명</th>
                    <td>마일드하고 부드러운맛이 특징인 브라질 원두인 ‘산토스’를 사용</td>
                </tr>
				<tr>
                    <th>기본 구성</th>
                    <td>1세트(10개)</td>
                </tr>
				<tr>
                    <th>판매가</th>
                    <td class="price">10,900 원</td>
                </tr>
                <tr>
                    <th>구매수량</th>
                    <td>
						<div class="length">
                            <button id="decrement" onclick="stepper(this)"> - </button>
        					<input type="number" min="1" max="20" step="1" value="1" id="my-input" readonly>
        					<button id="increment" onclick="stepper(this)"> + </button>
                        </div>
                    </td>
                </tr>
				<tr>
                    <th>배송비</th>
                    <td>3,000원 (3만원 이상 배송비 무료)</td>
                </tr>
                <tr>
                    <th>총 결제금액</th>
                    <td class="total"><b>10,900 원</b></td>
                </tr>
            </tbody>
        </table>
        <div class="img">
            <img src="../../images/sample/sample_DS001.png" alt="thumb" id="big">
            <ul class="thumb_image">
                <li><img src="../../images/sample/sample_small_DS001.png" onMouseOver="showBig('sample_DS001.png');"></li>
                <li><img src="../../images/sample/sample_small_DS002.png" onMouseOver="showBig('sample_DS002.png');"></li>
            </ul>
        </div>
        <div class="btns">
            <a href="#a" class="btn1">위시리스트에 담기</a>
            <a href="#a" class="btn2">장바구니에 담기</a>
        </div>
    	</div>

		</div>
					
		<!-- 상품 상세 소개 영역 -->
		<div>
			<img src="../../images/sample/sample_detail.png">
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

	<!-- 스크립트 -->	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="../../JS/navEvent.js"></script>
	<script src="../../JS/thumbEvent.js"></script>
	<script src="../../JS/numEvent.js"></script>
	
</body>
</html>