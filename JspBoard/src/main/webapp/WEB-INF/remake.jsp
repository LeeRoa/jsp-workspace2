<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판 수정 폼</title>
</head>
<body>
<form method="post" action="./remake2?post_id=<%=request.getParameter("post_id") %>">
<table border="1" summary="게시판 수정 폼"> 
 <caption><b>게시판 수정 폼</b></caption>
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

<h3>수정할 내용</h3>
<div>
	<textarea name="post_word" rows="10" cols="50" placeholder="Input some text."></textarea>
</div>

<p>
 <input type="submit" value="수정">
 <input type="button" value="취소" onclick="history.back()">
</p>
</form>
</body>
</html>