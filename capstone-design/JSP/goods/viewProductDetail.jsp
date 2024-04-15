<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>두잔 상품 상세 조회</title>
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/productDetail.css">

</head>
<body>
	<%
    String id = (String) session.getAttribute("sid");

try{
	String DB_URL="jdbc:mysql://localhost:3306/dojan";
	String DB_ID="multi";
	String DB_PASSWORD="abcd";

    Class.forName("org.gjt.mm.mysql.Driver");
	Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);

	request.setCharacterEncoding("euc-kr");
        
	String prdNo = request.getParameter("prdNo");
	String jsql = "select * from goods where prdNo = ?";
	PreparedStatement pstmt = con.prepareStatement(jsql);
	pstmt.setString(1, prdNo);
	ResultSet rs = pstmt.executeQuery();
    				
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
		<% 
		while(rs.next()){
			String num = rs.getString("prdNo");
			String name = rs.getString("prdName");
			String roast = rs.getString("prdRoasting");
			String price = rs.getString("prdPrice");
			String smell = rs.getString("prdSmell");
			String taste = rs.getString("prdTaste");
			String detail = rs.getString("prdDetail"); 
			String ctgType = rs.getString("ctgType"); 
		%>
		<!-- 컨텐츠 -->
		<!-- 상품 소개 -->
		<div class="containerWrap">
      <div class="productDetail_view">   
        <div class="img">
          
          <ul class="thumb_image">
            <li><img src="../../images/capdesign/<%=num%>.png" onMouseOver="showBig('../../images/capdesign/<%=num%>.png');">
            </li>
            <li><img src="../../images/capdesign/<%=num%>.png" onMouseOver="showBig('../../images/capdesign/<%=num%>.png');">
            </li>
          </ul>
          <img src="../../images/capdesign/<%=num%>.png" alt="thumb" id="big">
        </div>   
        <form action="../cart/incart.jsp" name="selectCapsule">
          <div class="productDetail_list">
            <h2><%=name%></h2>
            <input type=hidden name=prdNo value="<%=num%>">
            <div class="productDetail_detail">
              <span class="productDetail_detail1">로스팅 단계</span>
              <span class="productDetail_detail2"><%=roast%></span>
            </div>
            <div class="productDetail_detail">
              <span class="productDetail_detail1">향미</span>
              <span class="productDetail_detail2"><%=smell%></span>
            </div>
            <div class="productDetail_detail">
              <span class="productDetail_detail1">기본 구성</span>
              <span class="productDetail_detail2">1세트(10개입)</span>
            </div>
            <div class="productDetail_detail">
              <span class="productDetail_detail1">가격</span>
              <span class="productDetail_detail2"><%=price%> 원</span>
            </div>
            <div class="productDetail_detail">
              <span class="productDetail_detail1">배송비</span>
              <span class="productDetail_detail2">3,000 원</span>
            </div>
            <div class="productDetail_detail">
              <span class="productDetail_detail1">캡슐 종류</span>
              <span class="productDetail_detail2">
                <select name=capType class="captype">
                  <option value="nesOrigin">네스프레소 오리지널</option>
                  <option value="nesVeryuo">네스프레소 버츄오</option>
                  <option value="dolce">돌체구스토</option>
                  <option value="illy">일리</option>
                  <option value="kanu">카누</option>
                  <option value="keurig">큐리그</option>
                </select>
              </span>
            </div>
            
            <div class="productDetail_detail">
              <span class="productDetail_detail1">구매 수량</span>
              <span class="length">
                <button id="decrement" onclick="stepper(this)"> - </button>
                  <input name="qty" type="number" min="1" max="20" step="1" value="1" id="my-input" readonly>
                <button id="increment" onclick="stepper(this)"> + </button>
              </span>
            </div>
            <div class="productDetail_detail">
              <span class="productDetail_detail1_explain"><%=detail %></span>
            </div>
            <div class="btns">
             <a href="inWish.jsp?prdNo=<%=prdNo%>" class="btn1"> 위시리스트에 담기</a>
              <a href="#a" class="btn2" onclick="checkSelectCoffeeValue()">장바구니에 담기</a>
            </div>
          </div>
          </form>
        </form>
      </div>
    </div> 
		
		<!-- 상품 상세 소개 영역 -->
		<div class="goods_detail_detail">
    <img src="../../images/<%=ctgType%>.png">
    <% } %>
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
      <%
			}catch(Exception e){
			out.println(e);
		}
		%>
	<!-- 스크립트 -->	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="../../JS/navEvent.js"></script>
	<script src="../../JS/thumbEvent.js"></script>
	<script src="../../JS/numEvent.js"></script>
	<script>
	function checkSelectCoffeeValue(){
		selectCapsule.submit();
	}
	</script>
</body>
</html>
