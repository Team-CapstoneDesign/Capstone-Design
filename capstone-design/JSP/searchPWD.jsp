<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<title>비밀번호 찾기</title>

</head>

<script language="javascript" src="dojan_js_package.js"></script>


<body onLoad="searchpwd_focus()">  
<form name="searchpwd" method="post" action="searchPwdOK.jsp" target=_parent>  

     <div class="contents">

		 	<p>비밀번호 찾기</p>

			<div><input type="text"  name="id" placeholder="   아이디"></div><br>
            <div><input type="text"  name="name" placeholder="   이름"></div><br>
			<div><input type="text"  name="tel1" placeholder="  전화번호 앞자리"> -
		<input type="text"  name="tel2" placeholder="  전화번호 중간자리"> - 
		<input type="text"  name="tel3" placeholder="  전화번호 앞자리"></div><br>

			<div><input type=button  value="비밀번호 찾기" onClick="search_pwd()"></div>

      </div>       
		 
</form>
</div>
             
</body>  
</html>