<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*, java.text.*" %>         
<html>
   <head><title>작성 완료</title></head>      
   <body>
 <%
   String DB_URL="jdbc:mysql://localhost:3306/dozan";  
   String DB_ID="multi";  
   String DB_PASSWORD="abcd"; 
 	 
   Class.forName("org.gjt.mm.mysql.Driver");  
   Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

	request.setCharacterEncoding("euc-kr");
	
	String name = request.getParameter("rwName");              
    String subject = request.getParameter("rwTitle");
    String origin = request.getParameter("rwOrigin");
	String blend = request.getParameter("rwBlend");
    String roast = request.getParameter("rwRoast");
    String content = request.getParameter("rwContent");
    String ymd = (new java.util.Date()).toLocaleString();         
   
	String jsql = "select MAX(no) from board";
	PreparedStatement pstmt = con.prepareStatement(jsql);
	ResultSet rs = pstmt.executeQuery();
	
	int replynum = 0,
	    step = 0;

	int no;
    if (rs == null) {  
        no = 1;
    }  else {    	  
       	rs.next();
       	no = rs.getInt(1) + 1;
    } 
   	
    rs.close();    

	String jsql2 = "insert into board (idx, no, name, subject, base, blend, roasting, content, ymd) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
   	PreparedStatement pstmt2 = con.prepareStatement(jsql2);
	pstmt2.setInt(1, no);
	pstmt2.setInt(2, no);
    pstmt2.setString(3, name);
    pstmt2.setString(4, subject);
    pstmt2.setString(5, origin);
	pstmt2.setString(6, blend);
    pstmt2.setString(7, roast);
    pstmt2.setString(8, content);
    pstmt2.setString(9, ymd);
    	  
	pstmt2.executeUpdate();
   
    response.sendRedirect("review_list.jsp");       // 작동되면 리뷰창으로 
   %>
  </body>
</html>