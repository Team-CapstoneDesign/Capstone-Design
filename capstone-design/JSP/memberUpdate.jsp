<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보 수정</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/memberSetting.css">
    <link hrefn="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

</head>

<body>
       <%
        String id = (String) session.getAttribute("sid");
        if (id == null) {
    %>
        <script>
            alert("로그인이 필요한 서비스입니다!");
	           window.location.href = "./member/login.jsp";
        </script>
    <%
        }
    %>
    <div id="wrap">
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
		<% 
		 String DB_URL="jdbc:mysql://localhost:3306/dojan";  
         String DB_ID="multi";  
         String DB_PASSWORD="abcd";
 	 
	     Class.forName("org.gjt.mm.mysql.Driver"); 
    	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
	
	     String jsql = "select * from member where memId = ?";
	     PreparedStatement pstmt = con.prepareStatement(jsql);
	     pstmt.setString(1,id);

	     ResultSet rs = pstmt.executeQuery();
	     rs.next(); 

		 String memId = rs.getString("memId");
    	 String pw = rs.getString("memPwd");
	 	 String name = rs.getString("memName");
	 	 String email = rs.getString("memEmail");
	 	 String birth = rs.getString("memBirth");
		 String phone = rs.getString("memTel");

		 %>
        <div class="memberSetting_wrap">
            <div class="info_cont">
                <form name="modifyMem" action="memberUpdateResult.jsp">
                    
                    <div class="member_info">
                        <h3>개인정보</h3>
                        <div class="member_list">
                            <span class="gray-40">이름</span>
                            <span class="gray-80"><input class="inputText" type="text" name="name" value="<%=name%>"></span>
                            <span class="gray-40">생년월일</span>
                            <span class="gray-80"><input class="inputText" type="text" name="birth" value="<%=birth%>"></span>
                            <span class="gray-40">휴대폰</span>
                            <span class="gray-80"><input class="inputText" type="text" name="phone" value="<%=phone%>"></span>
                            <span class="gray-40">이메일</span>
                            <span class="gray-80"><input class="inputText" type="text" name="email" value="<%=email%>"></span>
                        </div>
                    </div>
                    <div class="member_info">
                        <h3>기본정보 변경</h3>
                        <div class="member_list">
                            <span class="gray-40">아이디</span>
                            <span class="gray-80"><input class="inputText" type="hidden" name="memId" value="<%=id%>"><%= id%></span>
                            <span class="gray-40">비밀번호</span>
                            <span class="gray-80"><input class="inputText" type="text" name="pwd" value="<%=pw%>"></span>
                        </div>
                    </div>
                    
                   <a href="#" onclick="modifyOK()"><div class="memberUpdate_btn">회원 정보 수정 완료</div></a>
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
                        <span class="tell"><img src="../images/tell.png" alt=""></span><span
                            id="tell_number">02-456-789</span><br>
                        <span class="footer_bold">상담시간 </span>10:00 ~ 18:00<br>
                        <span class="footer_bold">문자상담 </span>카카오톡 플러스 친구 등록<br>
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
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="../JS/navEvent.js"></script>
	<script>
	function modifyOK(){
		modifyMem.submit();
	}
	</script>

</body>

</html>
