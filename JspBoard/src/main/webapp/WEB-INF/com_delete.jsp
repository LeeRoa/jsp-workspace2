<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��� ����</title>
<link rel="stylesheet" href="./assets/com_delete.css" />
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap')
	;
</style>
</head>
<body>
	<h1>��� ����</h1>

	<div id="view-grid">
		<div id="user_id">
			<div>����ڸ�</div>
			<div>${com.com_id}</div>
		</div>
		<div id="content">
			<div>��� ����</div>
			<div>${com.com_word}</div>
		</div>
		<div id="pw">
			<div>��й�ȣ</div>
			<form name="DeleteForm" method="post" action="./com_delete2?com_num=<%=request.getParameter("com_num")%>">
				<input id="password" type="password" name="password" size="20" maxlength="50">
				<div id="btns">
					<input type="submit" value="����"> <input type="button"
						value="���" onclick="history.back()">
				</div>
			</form>
		</div>
	</div>
</body>
</html>