<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html><head><title> ��ٱ��ϳ��� ��ü ���� </title></head>
<body>
<center>

<%
try {
 	 String DB_URL="jdbc:mysql://localhost:3306/dojan";    //// ���� Ŀ���� �̿�
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


	if(caseNo!= null)  //  �ֹ��Ϸ�� ���� �����
	{                             
%>
<!-- �ֹ��Ϸ�� ������ ������ -->
<%
	}
	  else   //  �׳� ��ٱ��� ��ü������
	 {  %>

		 <script type="text/javascript">
         alert("��ٱ����� ���� ��� ��ǰ�� �����߽��ϴ�.");
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