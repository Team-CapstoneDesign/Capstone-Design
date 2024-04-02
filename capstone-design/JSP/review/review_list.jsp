<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<meta charset="EUC-KR">
<title>캡슐 조합 리뷰</title>
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/review.css">
</head>

 <%    
       String id = (String)session.getAttribute("sid");

       String DB_URL="jdbc:mysql://localhost:3306/dojan";  
       String DB_ID="multi";  
       String DB_PASSWORD="abcd"; 
 	 
	   Class.forName("org.gjt.mm.mysql.Driver");  
 	   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		request.setCharacterEncoding("euc-kr");

		String group;
		int list_index;

		group = request.getParameter("group");
		   
		if (group != null) 	
				list_index = Integer.parseInt(group);  
		else 
				list_index = 0;      

		String jsql = "select count(*) from board";
		PreparedStatement pstmt1 = con.prepareStatement(jsql);
		ResultSet cntRs = pstmt1.executeQuery();	

		cntRs.next();
		int cnt = cntRs.getInt(1);  

		
		int cntList = cnt/6;  
		int remainder = cnt%6; 
		int cntList_1;   
			
		if (cntList != 0) 
		{
			   if (remainder == 0)	 		
				  cntList_1 = cntList;           
			   else                    
				   cntList_1 = cntList + 1; 		  
		 } 
		 else 		 
			  cntList_1 = cntList + 1; 		

			   

   %>

<body>
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
						<li><a href="../goods/custome.jsp">캡슐 커스텀</a></li>
						<li><a>두잔 캡슐</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="../goods/viewProduct.jsp?ctgType=season">시즌한정</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=signature">시그니처</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=blending">블렌딩</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=original">오리지널</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=decaffeine">디카페인</a></li>
									<li><a href="../goods/viewProduct.jsp?ctgType=beverage">베버리지
											/ 논커피</a></li>
									<li><a href="">선물 패키지</a></li>
								</ul>
							</div></li>
						<li><a>커피 이야기</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="./review_list.jsp">캡슐 조합 리뷰</a></li>
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
					<span class="quick_menu"><a href="../member/logout.jsp">로그아웃</a></span>
					<span class="quick_menu"><a href="../mypage.jsp">마이페이지</a></span> <span
						class="quick_menu"><a href="">고객센터</a></span>
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
				<div class="sub_subTilte">캡슐 조합 리뷰</div><br><br>
					<ul class="smap">
						<!-- 미니 네비게이션 -->
						<li><a href="index.html"><img
								src="../../images/smap/icon_home_w.png" alt="홈으로"></a></li>
						<li><img class="arrow" src="../../images/smap/icon_arrow_w.png"
							alt="하위메뉴"></li>
						<li class="en"><a href="index.html">커피 이야기</a></li>
						<li><img class="arrow" src="../../images/smap/icon_arrow_w.png"
							alt="하위메뉴"></li>
						<li><a href="index.html" class="this">캡슐 조합 리뷰</a></li>
					</ul>
					
				</div>


			</div><br>
			
			<!-- 업로드 된 리뷰 리스트 보기 -->
			<div class="reviewPage">
				<div class="reviewPage_title">
					나만의 캡슐 커스텀 조합법을 공유해보세요!
				</div>
				
				<form name="reveiwList" method="post" action="">
					
				<div class="rvBtn"><a href="rwWrite.jsp"><input type="button" class="rvBtn1" value="내 캡슐 조합 리뷰 작성하기" ></a></div>
					
				<div class="reviewContents">
					<!-- 리뷰 박스 시작. 최대 노출 개수 9개.-->
		<%	  	
			                	String jsql2 = "select * from board order by idx desc, no";
		                        PreparedStatement pstmt2 = con.prepareStatement(jsql2);
								ResultSet rs = pstmt2.executeQuery();	
				%>	
				<%
									if (!rs.wasNull()) 
									{
									   for(int i = 0; i < list_index * 6; i++) 
									      rs.next();
								
								       int cursor = 0;
								       while (rs.next()) 
									   {
								              int idx = rs.getInt("idx");
								              int no = rs.getInt("no");
								              String name = rs.getString("name");
											  String subject = rs.getString("subject");
								              String base = rs.getString("base");
											  String blend = rs.getString("blend");
								              String roast = rs.getString("roasting");
											  String content = rs.getString("content");

								
								    %> 	
					<div class="reviewBox">
						<div class="RVname"><a href="view_review.jsp?idx=<%=idx%>">[<%= name%>]님의 조합</a></div>
						<div class="RVtitle"><a href="view_review.jsp?idx=<%=idx%>"><%= subject%></div>
						<div class="RVbean1">
							<span class="RV_line">베이스 원두</span>
							<div class="RVbase"><%= base%></div>
						</div>
						<div class="RVbean2">
							<span class="RV_line">블렌드 원두</span>
						<%
                       String[] blend_list = blend.split("  ");   
                       for (int i = 0; i < blend_list.length; i++) {
                       %>
							<div class="RVblend"><%= blend_list[i]%></div>
							<%
            }
                      %>
						</div>
						<div class="RVroast">
							<span class="RV_line">로스팅 단계</span>
							<div class="RVlevel"><%= roast%> 단계</div>
						</div>
						<div class="RVconts"><%= content%></div>
					</div>
					 <%
										cntRs.close();
									   
										 cursor ++;
								         if (cursor >= 6) break; 
								        }   
								    }  
								%>
					<!-- 여기까지 박스 반복. -->
				</div>
					
				<!-- 페이지 넘기기 버튼. -->
				<div class="pageBtn" >
 <a href="review_list.jsp?group=<%= list_index - 1 %>">◀ 이전</a>

	<% 
   
               int start=1;
               int max = cntList_1;
               int end = start + max -1;

	
           for (int j=start; j<=end; j++) 
	   {
		   
           if(j == list_index+1) 
		   {
			   
   %>
	   
            <%= j %>


   <%
            } 
            else 
			{
   %>
        <a href="review_list.jsp?group=<%= j - 1 %>"><%= j %></a>   <!-- 선택된 숫자는 검은색. 안된 숫자는 파란색 -->
   <%
            }
       }
   %> 
					 <a href="review_list.jsp?group=<%= list_index + 1 %>">다음 ▶</a>
				</div>	
					
				</form>
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

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="../../JS/dojan_js_package.js"></script>
	<script src="../../JS/navEvent.js"></script>
	
</body>
</html>