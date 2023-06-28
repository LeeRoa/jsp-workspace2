<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<c:forEach begin="1" end="10" var="i">
	<div>${i}-1</div>
	<div>${i}-2</div>
	<div>${i}-3</div>
	<div>${i}-4</div>
	<div>${i}-5</div>
</c:forEach>

<div class="footer">
	<div>${message}</div>
</div>