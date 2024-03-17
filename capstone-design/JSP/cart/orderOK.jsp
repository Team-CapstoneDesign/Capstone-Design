<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>
<html>
<head>
<title>林巩 贸府 肯丰</title>


</head>

<%
try{
 	 String DB_URL="jdbc:mysql://localhost:3306/dojan";    
     String DB_ID="multi"; 
     String DB_PASSWORD="abcd";
 	 
	 Class.forName("org.gjt.mm.mysql.Driver");  
 	 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	request.setCharacterEncoding("euc-kr");

	String ctNo = session.getId();  
    String mid = (String)session.getAttribute("sid"); 
                                                                                            
	String oRec = request.getParameter("recycle");
	String oName = request.getParameter("oName");
	String oTel = request.getParameter("otel");

	String oZipno = request.getParameter("oZipno");
	String oAddr1 = request.getParameter("oAddress1");		
	String oAddr2 = request.getParameter("oAddress2");
	String oAddr = oAddr1 + "  " + oAddr2 ; 
    String oAddrPlus = request.getParameter("oAddrplus");

	String oPay = request.getParameter("payment");
	 		

	String jsql = "select MAX(ordNo) from orderinfo";   
	PreparedStatement pstmt = con.prepareStatement(jsql);

	ResultSet rs = pstmt.executeQuery(); 

	int oNum;
	if(rs.next())                             
		oNum = rs.getInt(1) + 1;  
		                                           
	else                     
		oNum = 1;  
	                         

	String jsql2 = "select prdNo, ctqty, capType from cart where ctNo = ?";
	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setString(1, ctNo);		

	ResultSet rs2 = pstmt2.executeQuery(); 


	while(rs2.next())      // 肯力前 
	{			                    

			String prdNo = rs2.getString("prdNo");	
    		int ctQty = rs2.getInt("ctqty");
			String capType = rs2.getString("capType");

			String jsql3 = "INSERT INTO orderproduct (ordNo, prdNo, ordQty, ordCap) VALUES (?,?,?,?)";
			PreparedStatement pstmt3 = con.prepareStatement(jsql3);
			pstmt3.setString(1, Integer.toString(oNum));
			pstmt3.setString(2, prdNo);
			pstmt3.setInt(3, ctQty);
			pstmt3.setString(4, capType);

			pstmt3.executeUpdate();
	 }


    String jsql5 = "select csname, csQty, machine, roast, origin, blend from cscart where ctNo = ?";
	PreparedStatement pstmt5 = con.prepareStatement(jsql5);
	pstmt5.setString(1, ctNo);		

	ResultSet rs5 = pstmt5.executeQuery(); 

	 while(rs5.next())    // 目胶乓
	{			                    

			String csName = rs5.getString("csname");	
    		int csQty = rs5.getInt("csQty");
			String csCap = rs5.getString("machine");
			String csRoast = rs5.getString("roast");
			String csOrigin = rs5.getString("origin");
			String csBlend = rs5.getString("blend");


			String jsql6 = "INSERT INTO ordercustom (ordNo, csName, ordQty, ordCap, ordRoast, ordOrigin, ordBlend) VALUES (?,?,?,?,?,?,?)";
			PreparedStatement pstmt6 = con.prepareStatement(jsql6);
			pstmt6.setString(1, Integer.toString(oNum));
			pstmt6.setString(2, csName);
			pstmt6.setInt(3, csQty);
			pstmt6.setString(4, csCap);
			pstmt6.setString(5, csRoast);
			pstmt6.setString(6, csOrigin);
			pstmt6.setString(7, csBlend);

			pstmt6.executeUpdate();
	 }


	String jsql4 = "INSERT INTO orderInfo (ordNo, memId, ordDate, ordReceiver, ordZipno, ordAddress, ordAddrplus, ordTel, ordPay, ordRec)  VALUES(?,?,?,?,?,?,?,?,?,?)";


	java.util.Date date = new java.util.Date();   
    String oDate = date.toLocaleString();         

	PreparedStatement pstmt4 = con.prepareStatement(jsql4);
	pstmt4.setString(1, Integer.toString(oNum));
	pstmt4.setString(2, mid);
	pstmt4.setString(3, oDate);
	pstmt4.setString(4, oName);
	pstmt4.setString(5, oZipno);
	pstmt4.setString(6, oAddr);
    pstmt4.setString(7, oAddrPlus);
	pstmt4.setString(8, oTel);
	pstmt4.setString(9, oPay);
	pstmt4.setString(10, oRec);

	pstmt4.executeUpdate();


	 response.sendRedirect("deleteAllcart.jsp?case=1");     

   }  catch(Exception e)  {
        out.println(e);
} 
%>
  
</body>
</html> 