<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��� ���� ��</title>
</head>
<body>
<form method="post" action="./com_remake2?com_num=<%=request.getParameter("com_num") %>">
<table border="1" summary="��� ���� ��"> 
 <caption><b>��� ���� ��</b></caption>
 <colgroup>
  <col width="100px"/>
  <col width="500px"/>
 </colgroup>
 <tbody>
  <tr>
   <th align="center">��й�ȣ</th>
   <td><input type="password" name="password" size="20" maxlength="50"></td>
  </tr>
 </tbody>
</table>

<h3>������ ���</h3>
<div>
	<textarea name="com_word" rows="10" cols="50" placeholder="Input some text."></textarea>
</div>

<p>
 <input type="submit" value="����">
 <input type="button" value="���" onclick="history.back()">
</p>
</form>
</body>
</html>