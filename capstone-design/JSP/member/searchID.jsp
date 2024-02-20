<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>아이디 찾기</title>

</head>

<script language="javascript" src="../dojan_js_package.js"></script>


<body onLoad="searchid_focus()">  

<div class="wrap_searchId">
    <form name="searchid" method="post" action="searchIdOK.jsp" target=_parent>

        <div><input type="text"  name="name" placeholder="   이름"></div><br>
        <div><input type="text"  name="tel1" placeholder="  전화번호 앞자리"> -
		<input type="text"  name="tel2" placeholder="  전화번호 중간자리"> - 
		<input type="text"  name="tel3" placeholder="  전화번호 앞자리"></div><br>
		  
		<div><input type=button  value="내 아이디 찾기" onClick="search_id()"></div>

      </div>

    </form>
</div>

                
</body>  
</html>