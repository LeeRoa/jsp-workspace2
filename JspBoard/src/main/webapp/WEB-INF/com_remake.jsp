<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>댓글 수정 폼</title>
</head>
<body>
<form method="post" action="./com_remake2?com_num=<%=request.getParameter("com_num") %>">
<table border="1" summary="댓글 수정 폼"> 
 <caption><b>댓글 수정 폼</b></caption>
 <colgroup>
  <col width="100px"/>
  <col width="500px"/>
 </colgroup>
 <tbody>
  <tr>
   <th align="center">비밀번호</th>
   <td><input type="password" name="password" size="20" maxlength="50"></td>
  </tr>
 </tbody>
</table>

<h3>수정할 댓글</h3>
<div>
	<textarea name="com_word" rows="10" cols="50" placeholder="Input some text."></textarea>
</div>

<p>
 <input type="submit" value="수정">
 <input type="button" value="취소" onclick="history.back()">
</p>
</form>
</body>
</html>