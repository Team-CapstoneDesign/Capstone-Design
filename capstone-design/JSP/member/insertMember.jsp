<%@ page contentType="text/html;charset=euc-kr" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>ȸ������</title>

<script language="javascript" src="../dojan_js_package.js">
</script>

</head>
<body>

<form name="newMem" method="post" action="insertMemberResult.jsp">
    <div class="contents">
        <div><input type="text" autofocus="autofocus" name="name" id="name" placeholder="  �̸�"></div><br>
        
        <div><input type="text" name="birth" id="birth" placeholder="   ������� �� 8�ڸ�"></div><br>
        
        <div><input type="text" name="tel1" id="tel1" placeholder=" ��ȭ��ȣ ���ڸ�"></div>
		<div><input type="text" name="tel2" id="tel2" placeholder=" ��ȭ��ȣ �߰�"></div> 
		<div><input type="text" name="tel3" id="tel3" placeholder=" ��ȭ��ȣ ������"></div><br>  <!-- placeholder�� css�ϸ鼭 �˸°� ���� -->
          
        <div>
            <input type="text" name="id" id="id" placeholder="   ���̵�">
            <a href="javascript:checkID()"><input type="button" value="�ߺ�Ȯ��"></a>
        </div><br>
        
        <div><input type="password" name="pwd" id="pwd" placeholder="   �н�����"></div><br>
        
        <div><input type="text" name="email" id="email" placeholder="   �̸���"></div><br>
        
        <div>
            <input type="text" name="zipNo" id="zipNo" placeholder="   �����ȣ" readonly="">
            <button type="button" onclick="DaumPostcode();">�����ȣ ã��</button><br>
            <input type="text" name="address" id="address" placeholder="   �⺻�ּ�"><br>
            <input type="text" name="addressdetail" id="addressdetail" placeholder="   ���ּ�"><input type="text" name="addrplus" id="addrplus" placeholder="   ���� �׸�">
        </div><br>
        
        <div><input type="button" value="�����ϱ�" onClick="checkValue()"></div>
    </div>

	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			<script>
				function DaumPostcode() {
					new daum.Postcode({
						oncomplete: function(data) {
							
							var addr = ''; // �ּ� ����
							var extraAddr = ''; // �����׸� ����

							//����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
							if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
								addr = data.roadAddress;
                            } 
							else {                               // ����ڰ� ���� �ּҸ� �������� ���
								addr = data.jibunAddress;
							}

							document.getElementById('zipNo').value = data.zonecode;
							document.getElementById("address").value = addr;
							document.getElementById("addressdetail").focus();
						}
					}).open();
				}

			</script>
</form>
</body>
</html>