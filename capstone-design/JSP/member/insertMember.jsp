<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>���� ȸ������</title>

<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/insertMember.css">

<script language="javascript" src="../dojan_js_package.js">
</script>

</head>
<body>

<form name="newMem" method="post" action="insertMemberResult.jsp">
    <div class="insertNewMem">
		
		<div class="insertMemLogo">
			<img src="../../images/logo.png" width="95px" alt="">
		</div>
		
		<h2>ȸ������</h2>
		
		<ul>
			<li><input type="text" autofocus="autofocus" name="name" id="name" placeholder="�̸��� �Է����ּ���"></li>

			<li><input type="text" name="birth" id="birth" placeholder="������� �� 8�ڸ��� �Է����ּ���" maxlength='8'></li>

			<li><input type="text" name="tel1" id="tel1" placeholder="�޴���" maxlength='3'>
				<input type="text" name="tel2" id="tel2" placeholder="��ȣ��" maxlength='4'> 
				<input type="text" name="tel3" id="tel3" placeholder="�Է����ּ���" maxlength='4'></li>
			<br>
			<li>
				<input type="text" name="id" id="id" placeholder="���̵� �Է����ּ���">
				<a href="javascript:checkID()"><input type="button" id="idCheckBtn" value="�ߺ�Ȯ��"></a>
			</li>

			<li><input type="password" name="pwd" id="pwd" placeholder="�н����带 �Է����ּ���"></li>
			<br>
			<li><input type="text" name="email" id="email" placeholder="�̸����� �Է����ּ���"></li>
			<br>
			<li><input type="text" name="zipNo" id="zipNo" placeholder="�����ȣ�� �Է����ּ���" readonly>
				<button type="button" onclick="DaumPostcode();">�����ȣ ã��</button></li>
			<li><input type="text" name="address" id="address" placeholder="�⺻�ּҸ� �Է����ּ���"></li>
			<li><input type="text" name="addrplus" id="addrplus" placeholder="�ּ� �����׸��� �Է����ּ���"></li>
			<li><input type="text" name="addressdetail" id="addressdetail" placeholder="���ּҸ� �Է����ּ���"></li>
			<br>
			<li><input type="button" value="ȸ������ �ϱ�" id="makeMemID" onClick="checkValue()"></li>
		</ul>
    </div>

	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			
</form>
</body>
</html>