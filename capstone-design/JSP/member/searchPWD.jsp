<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link rel="stylesheet" href="../../css/searchIDnPW.css">

<title>��й�ȣ ã��</title>

</head>

<script language="javascript" src="../dojan_js_package.js"></script>

<body onLoad="searchpwd_focus()">

<div class="wrap_search">
	
	<div class="searchLogo">
		<img src="../../images/logo.png" alt="">
	</div>
		
	<form name="searchpwd" method="post" action="searchPwdOK.jsp" target=_parent>
		
			<h2>��й�ȣ ã��</h2>
			
			<div>
				<input type="text" name="id" placeholder="���̵� �Է����ּ���">
			</div><br>
			<div>
				<input type="text" name="name" placeholder="�̸��� �Է����ּ���">
			</div><br>
        	<div>
				<input type="text" name="tel1" id="tel1" placeholder="�޴���" maxlength='3'>
				<input type="text" name="tel2" id="tel2" placeholder="��ȣ��" maxlength='4'> 
				<input type="text" name="tel3" id="tel3" placeholder="�Է����ּ���" maxlength='4'>
			</div><br>
		  
			<div><input type="button" id="find_btn" value="�� ��й�ȣ ã��" onClick="search_pwd()"></div>
		
	</form>
</div>
             
</body>  
</html>