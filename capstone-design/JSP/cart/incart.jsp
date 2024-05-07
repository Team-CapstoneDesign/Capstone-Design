<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title>��ٱ���</title>


</head>
<body>

<%   
String sid = (String)session.getAttribute("sid");  

if (sid == null)   
{                            
%>
<script type="text/javascript">
    alert("��ٱ��Ͽ� �������� �α����� �ʿ��մϴ�!");
    window.location.href = "../member/login.jsp";
</script>
<%
}
else   
{
 try
	 {
 	    String DB_URL="jdbc:mysql://localhost:3306/dozan";    
        String DB_ID="multi"; 
        String DB_PASSWORD="abcd";
 	 
	    Class.forName("org.gjt.mm.mysql.Driver");  
 	    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

		String ctNo = session.getId();  //���� ��ȣ�� ctNo�� ����
 	                                                                  
		
		String prdNo = request.getParameter("prdNo"); 
		int ctQty = Integer.parseInt(request.getParameter("qty")); //  �ֹ�����(��ٱ��Ͽ� ���� ��ǰ����)
		String capType = request.getParameter("capType"); 


		String jsql = "select * from cart where ctNo = ? and prdNo = ?";
		PreparedStatement pstmt = con.prepareStatement(jsql);
		pstmt.setString(1, ctNo);
		pstmt.setString(2, prdNo);
		ResultSet rs = pstmt.executeQuery(); 

	   	if(rs.next())   // �̹� ��ٱ��Ͽ� ��ǰ������ ������ �߰�
		{		               
			int sum = rs.getInt("ctQty") + ctQty;  

			String jsql2 = "update cart set ctQty=? where ctNo=? and prdNo=? and capType=? ";
			PreparedStatement pstmt2 = con.prepareStatement(jsql2);
			pstmt2.setInt(1, sum);
			pstmt2.setString(2, ctNo);
			pstmt2.setString(3, prdNo);
			pstmt2.setString(4, capType);

			pstmt2.executeUpdate();
		}
		else  // �����ϱ� ���� �߰�
		{
			String jsql3 = "insert into cart (ctNo, prdNo, ctQty, capType) values (?,?,?,?)";
			PreparedStatement pstmt3 = con.prepareStatement(jsql3);
			pstmt3.setString(1,ctNo);
			pstmt3.setString(2,prdNo);
			pstmt3.setInt(3,ctQty);	
			pstmt3.setString(4,capType);

			pstmt3.executeUpdate();
		}  
	 } 	catch(Exception e)  {
             out.println(e);
    }  		

    
	 response.sendRedirect("showcart.jsp"); // ���������� �����ϸ� ��ٱ��� ������� ��
}  	                                     
%>
</body>
</html>
