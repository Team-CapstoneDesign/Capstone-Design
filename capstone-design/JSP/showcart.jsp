<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>장바구니</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/cart.css">
</head>
<body>
	
	<%
		String id = (String) session.getAttribute("sid");
	%> 
	<div class="wrap">
		<div class="headerTitle">
			<a href="index.jsp"><img class="logo" src="../images/logo.png"
				alt=""> </a>
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
		
		<!-- 컨텐츠 -->
		<div class="cart_container" name="cart_product">
			<!-- 네비게이션 헤더 -->
			<div class="cart_section1" name="cart_header">
				<div class="cart_headerTitle">
				<div class="cart_subTilte">장바구니</div><br><br>
			</div>
		</div>
		
		<div class="cart_content">
			<!-- 단계 진행도 -->
        	<nav class="cartProgress_nav">
			<ul class="cartProgress">

        		<li class="cartProgress_detail" style="border-bottom: 10px solid #e8bb00; font-weight: bold;">
                	<span class="cartProgress_detail_step">
						<span>1단계</span>
					</span>
                        <span class="cartProgress_detail_title">
                            장바구니 상세
						</span>
                    <span hidden>현재 단계</span>
					<span class="border"></span>
                </li>
				<li class="cartProgress_detail">
                	<span class="cartProgress_detail_step">
						<span>2단계</span>
					</span>
                        <span class="cartProgress_detail_title">
                            배송지 및 결제 정보 입력
						</span>
                    <span hidden>이후 단계</span>
					<span class="border"></span>
                </li>
				<li class="cartProgress_detail">
                	<span class="cartProgress_detail_step">
						<span>3단계</span>
					</span>
                        <span class="cartProgress_detail_title">
                            주문 상세 내역 확인
						</span>
                    <span hidden>이후 단계</span>
					<span class="border"></span>
                </li>
				<li class="cartProgress_detail">
                	<span class="cartProgress_detail_step">
						<span>4단계</span>
					</span>
                        <span class="cartProgress_detail_title">
                            주문 완료 및 확인
						</span>
                    <span hidden>이후 단계</span>
					<span class="border"></span>
                </li>
   	
			</ul>
			</nav>
			</div>
			
			<!-- 장바구니 상품목록 -->
			<div class="cartItem_content">
				<form name="cartItem" method="post" action="">
				<%
try {
      String DB_URL="jdbc:mysql://localhost:3306/dojan";    
      String DB_ID="multi"; 
      String DB_PASSWORD="abcd";
 	   
      Class.forName("org.gjt.mm.mysql.Driver");  
 	  Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	  String ctNo = session.getId(); 
				 
      String jsql = "select * from cart where ctNo = ?";
	  PreparedStatement pstmt = con.prepareStatement(jsql);
      pstmt.setString(1, ctNo);

	ResultSet rs = pstmt.executeQuery();

    if(!rs.next())     // 장바구니 내용없으면 비었다고 출력하기 위해 
	{  
		 
%>
	<p>장바구니가 비었습니다.</p>
<%
	}
	else
	{

        %>

	<%
		String jsql2 = "select prdNo, ctQty from cart where ctNo = ?";
		PreparedStatement pstmt2 = con.prepareStatement(jsql2);
		pstmt2.setString(1, ctNo);		

		ResultSet rs2 = pstmt2.executeQuery(); 

		int Nomaltotal=0;                                  //  완제품 총가격
		int Customtotal=0;                                 //  커스텀 총가격
		int total=0;                                       //  완제품 + 커스텀 총가격




		while(rs2.next()) 
  		{			                   
			String prdNo = rs2.getString("prdNo");	            //  cart에서 상품번호 추출
    		int ctQty = rs2.getInt("ctQty");	                //  cart에서 주문수량 추출 

    		String jsql3 = "select prdName, prdPrice, prdPrice2 from goods where prdNo = ?";
	    	PreparedStatement pstmt3 = con.prepareStatement(jsql3);
		    pstmt3.setString(1, prdNo);
		    
			ResultSet rs3 = pstmt3.executeQuery(); 
			rs3.next();

			String	prdName =  rs3.getString("prdName");       	    //   상품명 추출
			String  prdPrice =  rs3.getString("prdPrice");          //  완제품 단가 추출
			int prdPrice2= rs3.getInt("prdPrice2");                 //
				 
    		int NomalAmount = prdPrice2 * ctQty;
			Nomaltotal = Nomaltotal + NomalAmount;

			String comNomaltotal = String.format("%,d", Nomaltotal);

		%>
					
					<table class="cartItem_list">
						<tr class="cartItem_header" alt="캡슐 종류 구분용">
							<th>두잔 캡슐</th>
							<th>판매가</th>
							<th>구매수량<span>(10개 1세트 + 10캡슐)</span></th>
							<th>합계</th>
						</tr>
						<tr class="cartItem_product" alt="상세 상품">
							<th><img src="../images/sample/sample_<%=prdNo%>.png"><%=prdName%></th>
							<th><%=prdPrice%> 원</th>
							<th><input type="hidden" value="<%=ctQty%>"><%=ctQty%>세트</th>
							<th><%=comNomaltotal%> 원</th>
						</tr>
						<tr class="cartItem_header" alt="캡슐 종류 구분용">
							<th>커스텀 캡슐</th>
							<th>판매가</th>
							<th>구매수량<span>(10개 1세트)</span></th>
							<th>합계</th>
						</tr>
						<tr class="cartItem_product" alt="상세 상품">
							<th><img src="../images/sample/sample_custom01.png">커스텀 제작명1</th>
							<th>10,000 원</th>
							<th><input type="number" min="1" max="20" step="1" value="1">세트</th>
							<th>10,000 원</th>
						</tr>
					
						
					</table>
					
					<div class="cartTotal">
						<div>
							<table class="cartTotal_box">
								<tr class="cartTotal_box_header">
									<th><span class="cartTotal_itemtotal">상품 금액</span></th>
									<th><span class="cartTotal_delivery">배송비</span></th>
									<th><span class="cartTotal_total">총 주문 금액</span></th>
								</tr>
								<tr class="cartTotal_box_number">
									<th><span>40,000</span>원</th>
									<th><span>3,000</span>원</th>
									<th><span class="realTotal">43,000</span>원</th>
								</tr>
							</table>
						</div>

				<%
	     }  
 %>
	
						<div><input type="button" class="orderButton1" value="주문하기"></div>
					</div>
				</form>
			</div>	

<%
		}	
   }  catch(Exception e)  {
        out.println(e);
} 
%>
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
	<script src="../JS/navEvent.js"></script>
	<script src="../JS/numEvent.js"></script>
</body>
</html>