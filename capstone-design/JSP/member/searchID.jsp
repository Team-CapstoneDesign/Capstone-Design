<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
<link rel="stylesheet" href="../../css/searchIDnPW.css">

<title>���̵� ã��</title>

</head>

<script language="javascript" src="../dojan_js_package.js"></script>


<body onLoad="searchid_focus()">  

<div class="wrap_search">
	
	<div class="searchLogo">
		<img src="../../images/logo_dark.png" alt="">
	</div>
	
    <form name="searchid" method="post" action="searchIdOK.jsp" target=_parent>
		
		<h2>���̵� ã��</h2>
		
        <div>
			<input type="text" name="name" placeholder="�̸��� �Է����ּ���">
		</div><br>
        <div>
			<input type="text" name="tel1" id="tel1" placeholder="�޴���" maxlength='3'>
			<input type="text" name="tel2" id="tel2" placeholder="��ȣ��" maxlength='4'> 
			<input type="text" name="tel3" id="tel3" placeholder="�Է����ּ���" maxlength='4'>
		</div><br>
		  
		<div><input type="button" id="find_btn" value="�� ���̵� ã��" onClick="search_id()"></div>
		
	</form>
</div>

</div>

                
</body>  
</html>