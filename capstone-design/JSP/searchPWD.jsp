<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<title>��й�ȣ ã��</title>

</head>

<script language="javascript" src="dojan_js_package.js"></script>


<body onLoad="searchpwd_focus()">  
<form name="searchpwd" method="post" action="searchPwdOK.jsp" target=_parent>  

     <div class="contents">

		 	<p>��й�ȣ ã��</p>

			<div><input type="text"  name="id" placeholder="   ���̵�"></div><br>
            <div><input type="text"  name="name" placeholder="   �̸�"></div><br>
			<div><input type="text"  name="tel1" placeholder="  ��ȭ��ȣ ���ڸ�"> -
		<input type="text"  name="tel2" placeholder="  ��ȭ��ȣ �߰��ڸ�"> - 
		<input type="text"  name="tel3" placeholder="  ��ȭ��ȣ ���ڸ�"></div><br>

			<div><input type=button  value="��й�ȣ ã��" onClick="search_pwd()"></div>

      </div>       
		 
</form>
</div>
             
</body>  
</html>