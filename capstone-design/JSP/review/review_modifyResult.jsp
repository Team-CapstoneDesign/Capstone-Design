<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>         
<html>
   <head>
       <title>게시판 내용 수정 처리</title>
   </head>   

<%
    String DB_URL="jdbc:mysql://localhost:3306/dojan";  
    String DB_ID="multi";  
    String DB_PASSWORD="abcd"; 
    Class.forName("org.gjt.mm.mysql.Driver");  
    Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD); 

    request.setCharacterEncoding("euc-kr");

    String idx = request.getParameter("idx");
    String subject = request.getParameter("subject"); 
    String content = request.getParameter("content");              

    String jsql2 = "update board set subject = ?, content = ? where idx = ?";
    PreparedStatement pstmt2 = con.prepareStatement(jsql2);
    pstmt2.setString(1, subject);
    pstmt2.setString(2, content);
    pstmt2.setInt(3, Integer.parseInt(idx));
    pstmt2.executeUpdate();
%>

<body>

    <script language="javascript">

        function modifyOK() {
            alert("수정이 완료됐습니다!");
            var idx = "<%= request.getParameter("idx") %>";
            window.location.href = "view_review.jsp?idx=" + idx;
        }

        modifyOK();
    </script>
</body>
</html>
