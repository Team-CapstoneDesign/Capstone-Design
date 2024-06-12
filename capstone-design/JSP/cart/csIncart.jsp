<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>장바구니</title>


</head>
<body>

<%   
String sid = (String)session.getAttribute("sid");  

if (sid == null)   
{                            
%>
<script type="text/javascript">
    alert("장바구니에 담으려면 로그인이 필요합니다!");
    window.location.href = "../member/login.jsp";
</script>
<%
}
else   
{
 try
	 {
	 	request.setCharacterEncoding("EUC-KR");
 	    String DB_URL="jdbc:mysql://localhost:3306/dozan";    
        String DB_ID="multi"; 
        String DB_PASSWORD="abcd";
 	 
	    Class.forName("org.gjt.mm.mysql.Driver");  
 	    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		String ctNo = session.getId();  //세션 번호를 ctNo에 저장
 	                                                                  
		
		String name = request.getParameter("customeName"); 
		String origin = request.getParameter("baseName"); 
		String blend = request.getParameter("blendName"); 
		String roast = request.getParameter("roastingName"); 
		String cap = request.getParameter("machineName");
		int ctQty = Integer.parseInt(request.getParameter("customeQty"));
		String price = request.getParameter("price_comma"); 
		String price2 = request.getParameter("price");


	   
		String jsql3 = "insert into cscart (ctNo, csname, origin, blend, roast, machine, csQty, price, price2) values (?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt3 = con.prepareStatement(jsql3);
		pstmt3.setString(1,ctNo);
		pstmt3.setString(2,name);
		pstmt3.setString(3,origin);
		pstmt3.setString(4,blend);
		pstmt3.setString(5,roast);
		pstmt3.setString(6,cap);
		pstmt3.setInt(7,ctQty);	
		pstmt3.setString(8,price);
		pstmt3.setString(9,price2);

		pstmt3.executeUpdate();
	  


	 } 	catch(Exception e)  {
             out.println(e);
    }  		

    
	 response.sendRedirect("showcart.jsp");          
}  	                                     
%>
</body>
</html>
