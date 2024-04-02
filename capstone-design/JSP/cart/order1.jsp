<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>

<html>

<head>
<title>배송/결제</title>
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
						<li><a>캡슐 커스텀</a></li>
						<li><a>두잔 캡슐</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="../goods/viewProduct.jsp?ctgType=season">시즌한정</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=signature">시그니처</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=blending">블렌딩</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=original">오리지널</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=decaf">디카페인</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=beveridge">베버리지
											/ 논커피</a></li>
									<li><a href="">선물 패키지</a></li>
								</ul>
							</div></li>
						<li><a>커피 이야기</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="../review/review_list.jsp">캡슐 조합 리뷰</a></li>
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
					<span class="quick_menu"><a href="../member/login.jsp">로그인</a></span> <span
						class="quick_menu"><a href="">회원가입</a></span> <span
						class="quick_menu"><a href="">고객센터</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="../member/mainlogout.jsp">로그아웃</a></span>
					<span class="quick_menu"><a href="../mypage.jsp">마이페이지</a></span> <span
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
					<div class="cart_subTitle">주문/결제</div>
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
					<div class="stepper-item">
						<div class="step-counter">3</div>
						<div class="step-name">주문 상세 내역 확인</div>
					</div>
					<div class="stepper-item">
						<div class="step-counter">4</div>
						<div class="step-name">주문 완료 및 확인</div>
					</div>
				</div>
			</div>

			<%
			String DB_URL = "jdbc:mysql://localhost:3306/dojan";
			String DB_ID = "multi";
			String DB_PASSWORD = "abcd";

			Class.forName("org.gjt.mm.mysql.Driver");
			Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
			%>

			<!-- 주문 / 결제 정보 입력 -->
			<div class="cart_Info">
				<form name="orderInfo" method="post" action="order2.jsp">
					<div class="recycleCap">
						<label for="recycle_rq"> <img
							src="../../images/recycle/recycle_rq.png">
							<p>
								<span>커피 한 잔으로 실천하는 기후동행!</span>
								<br>사용하신 캡슐을 재활용 백 안에 넣어주세요.
								<br>다음 배송일자에 맞추어 기사님이 재활용 백을 수거해드립니다.
							</p> <input type="checkbox" name="recycle" value="recycle"
							id="recycle_rq">
						</label>
					</div>

					<div class="cart_section2">
						<div class="cart_title">주문자 정보(내 정보 그대로 불러오기. 수정 불가.)</div>
						<%
							String myid = (String) session.getAttribute("sid");

						String jsql = "select memName, memTel, memEmail from member where memId = ?";
						PreparedStatement pstmt = con.prepareStatement(jsql);
						pstmt.setString(1, myid);

						ResultSet rs = pstmt.executeQuery();
						rs.next();

						String name = rs.getString("memName");
						String tel = rs.getString("memTel");
						String email = rs.getString("memEmail");
						%>
						<div class="cartWrap">
							<div class="cart_cont">
								<div class="cart_wrap_title">주문자</div>
								<div class="cart_wrap_wrap"><%=name%></div>
							</div>
							<div class="cart_cont">
								<div class="cart_wrap_title">전화번호</div>
								<div class="cart_wrap_wrap"><%=tel%></div>
							</div>
							<div class="cart_cont">
								<div class="cart_wrap_title">이메일</div>
								<div class="cart_wrap_wrap"><%=email%></div>
							</div>
						</div>
					</div>

					<div class="cart_section3">
						<div class="cart_title">배송지 정보(내 정보를 가져오되 수정 가능하게)</div>
						<div class="cartWrap">
							<th>받는 사람<br> <input type="text" name="name" id="name" placeholder="이름을 입력해주세요" value="<%=name%>"><br>
							</th>
							<th>번호<br> 
								<input type="text" name="tel1" id="tel1" placeholder="휴대폰" maxlength='3'>
								<input type="text" name="tel2" id="tel2" placeholder="번호를" maxlength='4'>
								<input type="text" name="tel3" id="tel3" placeholder="입력해주세요" maxlength='4'><br>
							</th>
							<th>주소<br>
								<input type="text" name="zipNo" id="zipNo" placeholder="우편번호를 입력해주세요" readonly>
								<button type="button" class="findZipNo" onclick="DaumPostcode();">우편번호 찾기</button><br>
								<input type="text" name="address" id="address" placeholder="기본주소를 입력해주세요">
								<input type="text" name="addrplus" id="addrplus" placeholder="주소 참고항목을 입력해주세요"><br>
								<input type="text" name="addressdetail" id="addressdetail" placeholder="상세주소를 입력해주세요">
							</th>
						</div>
					</div>

					<div class="cart_section4">
						<div class="cart_title">결제 수단</div>
						<div class="cartWrap">
							<tr>
								<th>
									<label> <input type="radio" name="payment" value="신용카드" id="card"> 신용카드
									</label> <br> 
									<label> <input type="radio" name="payment" value="카카오페이" id="kakao"> 카카오페이
									</label> <br> 
									<label> <input type="radio" name="payment" value="무통장입금" id="bank"> 무통장입금
									</label> <br>
								</th>
							</tr>
						</div>
					</div>

					<div class="cart_Info_button">
						<input type="button" class="btn_backPage" value="<  장바구니 상세로 돌아가기">
						<input type="button" class="btn_nextPage" value="다음 단계로  >"
							onclick="submitForm()">
					</div>
				</form>
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
							<span class="tell"><img src="../images/tell.png" alt=""></span><span
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
		<script language="javascript" src="../dojan_js_package.js"></script>
		<script src="../../JS/navEvent.js"></script>
		<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
			// 재활용 값 넘기기
			var recycleCheckbox = document.getElementById("recycleCheckbox");

			recycleCheckbox.addEventListener("change", function() {
				// 체크되었는지 확인

				if (recycleCheckbox.checked) {
					recycleCheckbox.value = "recycle";

				} else {
					recycleCheckbox.value = "none";
				}
			});
		</script>
</body>

</html>