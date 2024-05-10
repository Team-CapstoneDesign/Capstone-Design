<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="euc-kr">
<title>관리자 페이지</title> 

<link rel="stylesheet" href="../../css/manager.css">	

</head>

<body>
		<section class="goods" id="goods">
			<h2>상품 관리</h2>
			<h3>완제품 캡슐 상품 내역 상세 조회</h3>

			<form name="goodsModify" method="post" action="">

			<table>
				<tr>
					<th width="13%">상품번호</th>
					<td><input type="text" name="no" id="no" value="DB001"></td>
				</tr>
				<tr>
					<th>상품 이미지</th>
					<td><img src="../../images/capdesign/DB001.png" onclick="window.open(this.src)"></td>
				</tr>
				<tr>
					<th>상품 분류</th>
					<td><input type="text" name="type" id="type" value="블렌딩"></td>
				</tr>
				<tr>
					<th>상품명</th>
					<td><input type="text" name="name" id="name" value="두잔 소프트 블렌딩"></td>
				</tr>
				<tr>
					<th>로스팅 단계</th>
					<td><input type="text" name="roasting" id="roasting" value="시티-풀시티"></td>
				</tr>
				<tr>
					<th>상품 가격</th>
					<td><input type="text" name="price" id="price" value="11,900 원"></td>
				</tr>
				<tr>
					<th>향</th>
					<td><input type="text" name="smell" id="smell" value="밸런스"></td>
				</tr>
				<tr>
					<th>맛</th>
					<td><input type="text" name="taste" id="taste" value="부드럽고 구수함"></td>
				</tr>
				<tr>
					<th>상세 설명</th>
					<td><textarea name="detail" id="detail">콜롬비아 수프리모 + 케냐 AA + 과테말라 안티구아 사용 부드럽고 깔끔한 느낌을주며 목넘김과 풍미가 좋고 구수한 맛을 내며 밸런스가 좋음</textarea></td>
				</tr>
			</table>
			<a href="m_main.jsp"><div class="btn_back">뒤로가기</div></a>
			<a href="#" onclick=""><div class="btn_modify">정보 수정 완료</div></a>

			</form>
			
		</section>
</body>
</html>
