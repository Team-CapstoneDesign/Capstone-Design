<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html><head><title> 장바구니내용 전체 삭제 </title></head>
<body>
<center>

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/dojan";    //// 아직 커스텀 미완
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

    String jsql2 = "delete from cscart where ctNo=?";   
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setString(1, ctNo);

	pstmt2.executeUpdate();


	if(caseNo!= null)  //  주문완료로 인한 지우기
	{                             
%>
<!-- 주문완료시 나오는 페이지 -->
<%
	}
	  else   //  그냥 장바구니 전체삭제시
	 {  %>

		 <script type="text/javascript">
         alert("장바구니의 담은 모든 상품을 삭제했습니다.");
         window.location.href = "showcart.jsp";
         </script>

<%
	  }
   } catch (Exception e) {
       out.println(e);
}
%>
</center>
</body>
</html>