<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>���̵� ã��</title>

</head>

<script language="javascript" src="../dojan_js_package.js"></script>


<body onLoad="searchid_focus()">  

<div class="wrap_searchId">
    <form name="searchid" method="post" action="searchIdOK.jsp" target=_parent>

        <div><input type="text"  name="name" placeholder="   �̸�"></div><br>
        <div><input type="text"  name="tel1" placeholder="  ��ȭ��ȣ ���ڸ�"> -
		<input type="text"  name="tel2" placeholder="  ��ȭ��ȣ �߰��ڸ�"> - 
		<input type="text"  name="tel3" placeholder="  ��ȭ��ȣ ���ڸ�"></div><br>
		  
		<div><input type=button  value="�� ���̵� ã��" onClick="search_id()"></div>

      </div>

    </form>
</div>

                
</body>  
</html>