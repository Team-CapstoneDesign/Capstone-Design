<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.sql.*" %>

<%
boolean isExist = false;    // rs.next�� Ÿ���� boolean

try {
    	String DB_URL="jdbc:mysql://localhost:3306/dozan";   
        String DB_ID="multi"; 
        String DB_PASSWORD="abcd"; 
 	 
	    Class.forName("org.gjt.mm.mysql.Driver");  
 	    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 
        
	    String id = request.getParameter("id");
	    
		String jsql = "select * from member where memId = ?";   
        PreparedStatement  pstmt  = con.prepareStatement(jsql);
	    pstmt.setString(1, id);

	    ResultSet rs = pstmt.executeQuery();  	
        
        if(rs.next())              
              isExist = true;
        else                           
             isExist = false;

    } catch (Exception e) {
        	out.println(e);
}
%>

<html>
<head>
<title>ID �ߺ�üũ</title>
</head>

<body bgcolor="#ffffff">
<br>
<table width="228" border="0" cellspacing="1" cellpadding="3" height="50" style="font-size:10pt;font-family:���� ���">
    <tr>
        <td height="25" align=center >
          �Է��� ID:  <%=request.getParameter("id")%>
        </td>
    </tr>
    
    <tr>
        <td height="25" align=center>
  <%  
		   if(isExist)  
                 out.println("��� �Ұ����� ID�Դϴ�.");
	       else 
                 out.println("��� ������ ID�Դϴ�.");
  %>
        </td>
    </tr>

    <tr>
        <td align=center>
            <a href="javascript:window.close()"><input type="button" value="�ݱ�"></a>
        </td>
    </tr>
</table>
</body>
</html>