<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="chap08.model.Student" %>
<%
	// ※ 데이터베이스에서 데이터를 꺼낸 후 포워드 되었다고 가정
	Student s = new Student();
	request.setAttribute("stu1", s);
	
	s.setName("김철수");
	s.setAge(20);
	s.setKor(80);
	s.setEng(78);
	s.setMath(50);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>EL</title>
</head>
<body>
	
	<h3># JSP Expression Language (EL)</h3>
	
	<ul>
		<li>JSP에 특정 버전 이후부터 추가된 기본 기능</li>
		<li>어트리뷰트에 실려있는 값을 쉽게 꺼내 쓸 수 있는 기능</li>
		<li>간단한 자바 메서드의 호출은 가능하지만 모든 메서드들 자바처럼 자유롭게 쓸 수 있는 것은 아니다.</li>
		<li>자바스크립트의 format string과 똑같이 생겨서 jsp파일 내에서는 JS format String을 사용할 수 없다.</li>
	</ul>
	
	<c:set var="book" value="해리포터와 불의 잔" scope="application"/>
	<c:set var="book" value="해리포터와 아즈카반의 죄수" scope="session"/>
	<c:set var="book" value="해리포터와 비밀의 방" scope="request"/>
	<c:set var="book" value="해리포터와 마법사의 돌" scope="page"/>
	
	<h3># EL로 각 영역의 어트리뷰트 출력하기</h3>
	
	<ul>
		<li>그냥 : ${book}</li>
		<li>page : ${pageScope.book}</li>
		<li>request : ${requestScope.book }</li>
		<li>session : ${sessionScope.book }</li>
		<li>application : ${applicationScope.book }</li>
	</ul>
	
	<h3># EL로 어트리뷰트에 들어있는 Model 클래스 활용하기</h3>
	
	<ul>
		<li>객체를 그냥 출력 (해당 객체의 toString() 호출) : ${stu1 }</li>
		<li>객체에 .을 찍고 속성을 호출하면 실제로는 해당 속성의 getter를 호출하여 사용한다.</li>
		<li>해당 속성의 getter가 구현되어 있지않으면 에러가 발생한다.</li>
		<li>name : ${stu1.name }</li>
		<li>age : ${stu1.age }</li>
		<li>kor : ${stu1.kor }</li>
		<li>eng : ${stu1.eng }</li>
		<li>math : ${stu1.math }</li>
	</ul>
		
	<h3># EL의 리터럴</h3>
	
	<c:set var="premium" value="true" />
	
	<ul>
		<li>정수 :  ${12345 }, ${133 + 123 }</li>
		<li>실수 :  ${12345.12345 * 123 }</li>
		<li>문자열 : ${'hello!' }, ${"hello~" }</li>
		<li>boolean : ${true }, ${false } ${not premium }</li>
	</ul>
		
	<h3># EL의 연산자</h3>
	
	<c:set var="a" value="30" />
	<c:set var="b" value="17" />
	<c:set var="fruit" value="blueberry" />
	
	<dl>
		<dt>산술 : +, -, *, /, %, mod</dt>
		<dd>ex: ${10 % 7 }, ${10 mod 7 } ${a mod b }</dd>				
		<dt>비교 : ==, !=, eq(equal), ne(not equal), lt(less than), gt(greater than), le(less than equal), ge(greater than equal)</dt>
		<dd>ex: ${a eq b }, ${a == b }, ${a gt b }, ${fruit == 'blueberry' }, ${fruit != 'strawberry' }</dd>
		<dt>논리 : and, or, not, &&, ||, !</dt>
		<dd>${fruit == 'blueberry' and a mod 2 == 0}</dd>
		<dt>empty : 해당 값이 null 또는 ""일 때 true</dt>
		<dd>${empty fruit }</dd>
		<dt>삼항 연산자</dt>
		<dd>사과 바구니 개수 : ${a % 10 == 0 ? a / 10 : a / 10 + 1 }</dd>
	</dl>
				
</body>
</html>