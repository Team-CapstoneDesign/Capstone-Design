<%@ page contentType="text/html; charset=euc-kr" %>
<%
    // 세션 무효화
    session.invalidate();
%>

<script>
    // JavaScript를 사용하여 index.html 페이지로 리디렉션
    window.location.href = "index.html";
</script>
