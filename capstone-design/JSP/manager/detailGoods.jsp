<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="euc-kr">
<title>������ ������</title> 

<link rel="stylesheet" href="../../css/manager.css">	

</head>

<body>
		<section class="goods" id="goods">
			<h2>��ǰ ����</h2>
			<h3>����ǰ ĸ�� ��ǰ ���� �� ��ȸ</h3>

			<form name="goodsModify" method="post" action="">

			<table>
				<tr>
					<th width="13%">��ǰ��ȣ</th>
					<td><input type="text" name="no" id="no" value="DB001"></td>
				</tr>
				<tr>
					<th>��ǰ �̹���</th>
					<td><img src="../../images/capdesign/DB001.png" onclick="window.open(this.src)"></td>
				</tr>
				<tr>
					<th>��ǰ �з�</th>
					<td><input type="text" name="type" id="type" value="����"></td>
				</tr>
				<tr>
					<th>��ǰ��</th>
					<td><input type="text" name="name" id="name" value="���� ����Ʈ ����"></td>
				</tr>
				<tr>
					<th>�ν��� �ܰ�</th>
					<td><input type="text" name="roasting" id="roasting" value="��Ƽ-Ǯ��Ƽ"></td>
				</tr>
				<tr>
					<th>��ǰ ����</th>
					<td><input type="text" name="price" id="price" value="11,900 ��"></td>
				</tr>
				<tr>
					<th>��</th>
					<td><input type="text" name="smell" id="smell" value="�뷱��"></td>
				</tr>
				<tr>
					<th>��</th>
					<td><input type="text" name="taste" id="taste" value="�ε巴�� ������"></td>
				</tr>
				<tr>
					<th>�� ����</th>
					<td><textarea name="detail" id="detail">�ݷҺ�� �������� + �ɳ� AA + ���׸��� ��Ƽ���� ��� �ε巴�� ����� �������ָ� ��ѱ�� ǳ�̰� ���� ������ ���� ���� �뷱���� ����</textarea></td>
				</tr>
			</table>
			<a href="m_main.jsp"><div class="btn_back">�ڷΰ���</div></a>
			<a href="#" onclick=""><div class="btn_modify">���� ���� �Ϸ�</div></a>

			</form>
			
		</section>
</body>
</html>
