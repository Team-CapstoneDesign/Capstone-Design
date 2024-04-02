<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>찜하기</title>


</head>
<body>

<%   
String sid = (String)session.getAttribute("sid");  

if (sid == null)   
{                            
%>
<script type="text/javascript">
    alert("로그인이 필요합니다!");
    window.location.href = "../member/login.jsp";
</script>
<%
}
else   
{
 try
	 {
 	    String DB_URL="jdbc:mysql://localhost:3306/dojan";    
        String DB_ID="multi"; 
        String DB_PASSWORD="abcd";
 	 
	    Class.forName("org.gjt.mm.mysql.Driver");  
 	    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		String ctNo = session.getId();                                                               		
		String prdNo = request.getParameter("prdNo"); 


		String jsql = "select * from wish where ctNo = ? and prdNo = ?";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setString(1, ctNo);
		pstmt.setString(2, prdNo);
		ResultSet rs = pstmt.executeQuery(); 



		String jsql4 = "select * from goods where prdNo = ?";
	    PreparedStatement pstmt4 = con.prepareStatement(jsql4);
	    pstmt4.setString(1, prdNo);
	    ResultSet rs4 = pstmt4.executeQuery();
		
		rs4.next();
         
		String num = rs4.getString("prdNo");
		String name = rs4.getString("prdName");
		String roast = rs4.getString("prdRoasting");
		String price = rs4.getString("prdPrice");
		String smell = rs4.getString("prdSmell");
		String taste = rs4.getString("prdTaste");
		String detail = rs4.getString("prdDetail"); 


	   	if(rs.next())   // 찜하기에 상품이 있으면 찜에서 삭제
		{		               

			String jsql2 = "DELETE FROM wish WHERE ctNo = ? AND prdNo = ?";
			PreparedStatement pstmt2 = con.prepareStatement(jsql2);
			pstmt2.setString(1, ctNo);
			pstmt2.setString(2, prdNo);

			pstmt2.executeUpdate();


		}
		else  // 없으니까 새로 추가
		{
			String jsql3 = "insert into wish (ctNo, prdNo, prdName, prdPrice, prdRoasting) values (?,?,?,?,?)";
			PreparedStatement pstmt3 = con.prepareStatement(jsql3);
			pstmt3.setString(1,ctNo);
			pstmt3.setString(2,num);
			pstmt3.setString(3,name);
			pstmt3.setString(4,price);
			pstmt3.setString(5,roast);

			pstmt3.executeUpdate();
		}  
	 } 	catch(Exception e)  {
             out.println(e);
    }  		

    
	 response.sendRedirect("../mypage.jsp"); // 마이페이지로 가게 할 예정
}  	                                     
%>
</body>
</html>
