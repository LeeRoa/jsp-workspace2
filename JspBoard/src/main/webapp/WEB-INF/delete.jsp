<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խñ� ����</title>
<link rel="stylesheet" href="./assets/post_delete.css" />
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap')
	;
</style>
</head>
<body>

	<h1>�Խñ� ����</h1>

	<div id="view-grid">
		<div id="title">${post.title}</div>
		<div id="user_id">
			<div>����ڸ�</div>
			<div>${post.user_id}</div>
		</div>
		<div id="views">
			<div>��ȸ��</div>
			<div>${post.views}</div>
		</div>
		<div id="content">${post.post_word}</div>
		<form id="delete-form" name="DeleteForm" method="post"
			action="./delete2?post_id=<%=request.getParameter("post_id")%>">
			<div id="pw">
				<div>��й�ȣ</div>
				<input type="password" name="password" size="20" maxlength="50">
			</div>
			<div id="btns">
				<input type="submit" value="����"> <input type="button"
					value="���" onclick="history.back()">
			</div>
		</form>
	</div>

</body>
</html>