<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�Խ��� ���� ��</title>
</head>
<body>
<form name="DeleteForm" method="post" action="BoardDelete_ok.jsp">
<table border="1" summary="�Խ��� ���� ��"> 
 <caption><b>�Խ��� ���� ��</b></caption>
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

<p>
 <input type="button" value="����" onclick="DeleteCheck();">
 <input type="button" value="���" onclick="history.back()">
</p>
</form>
</body>
</html>