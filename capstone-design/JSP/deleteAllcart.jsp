<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html><head><title> 장바구니내용 전체 삭제 </title></head>
<body>
<center>

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/dojan";    //// 아직 미완
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	String ctNo = session.getId();   
	String caseNo = request.getParameter("case");

	String jsql = "delete from cart where ctNo=?";   
	PreparedStatement pstmt = con.prepareStatement(jsql);
	pstmt.setString(1, ctNo);
	
    pstmt.executeUpdate();

	if(caseNo!= null)  //  주문완료로 인한 지우기
	{                             
%>
<br><br>
<font size=6 color=blue><b>[상품 주문 완료]</b></font><p>
	상품 주문이 완료되었습니다.<br><br>
	주문하신 상품은 주문 완료 후 2일 이내에 배송될 예정입니다.<br><br>
	남서울 멀티쇼핑몰(주)을 이용해 주셔서 감사합니다!
<%
	}
	  else   //  그냥 장바구니 전체삭제시
	 {
%>
<br><br>
<font color="blue" size='6'><b>[장바구니 내용 삭제]</b></font><p>
	장바구니의 모든 내용을 삭제하였습니다.
<%
	  }
   } catch (Exception e) {
       out.println(e);
}
%>
</center>
</body>
</html>