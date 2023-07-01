<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page
	import="JspBoard.model.Post, JspBoard.dao.BoardListDAO, JspBoard.dao.BoardListDAO_Impl,java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>게시판</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap')
	;
</style>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="./assets/post.css" />
</head>
<body>

	<h1 id="title1">익명 게시판</h1>


	<div id="post-grid">
		<div id="num">순번</div>
		<div id="title">제목</div>
		<div id="user">등록자명</div>
		<div id="view">조회수</div>
		<div id="remake">수정</div>
		<div id="delete">삭제</div>
		<%

		%>

		<c:forEach items="${post_list}" var="post">
			<div class="post">${post.post_id}</div>
			<button name="title" value="${post.title}"
				onclick="location.href='./click?post_id=${post.post_id}'"><span class="title">${post.title}</span></button>
			<div class="post">${post.user_id}</div>
			<div>${post.views}</div>
			<button type="button" id="remake-btn"
				onclick="window.location='remake?post_id=${post.post_id}'">수정하기</button>
			<button type="button" id="delete-btn"
				onclick="window.location='delete?post_id=${post.post_id}'">삭제하기</button>
		</c:forEach>
	</div>

	<button id="post-btn" onclick="location.href='./post'">글쓰기</button>

	<div id="page">

		<c:choose>
			<c:when test="${pageCnt.page <= 10}">
				<button id="prev-btn"
					style="color: rgb(192, 192, 192); cursor: default;">
					<span id="prev" class="material-symbols-outlined">arrow_back_ios</span>
				</button>
				<c:forEach begin="1" end="${pageCnt.page}" var="i">
					<c:choose>
						<c:when test="${pageCnt.currPage eq i}">
							<button class="select-btn" id="btn${i}"
								onclick="location.href='board_list?page=${i}'">${i}</button>
						</c:when>
						<c:otherwise>
							<button id="btn${i}"
								onclick="location.href='board_list?page=${i}'">${i}</button>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<button id="next-btn"
					style="color: rgb(192, 192, 192); cursor: default;">
					<span id="next" class="material-symbols-outlined">
						arrow_forward_ios </span>
				</button>
			</c:when>
			<c:otherwise>
				<!-- 페이지가 10보다 클때 -->
				<c:choose>
					<c:when test="${pageCnt.currPage <= 10}">
						<button id="prev-btn"
							style="color: rgb(192, 192, 192); cursor: default;">
							<span id="prev" class="material-symbols-outlined">arrow_back_ios</span>
						</button>
					</c:when>
					<c:otherwise>
						<button id="prev-btn" style="color: black; cursor: pointer;"
							onclick="location.href='board_list?page=${pageCnt.prev}'">
							<span id="prev" class="material-symbols-outlined">arrow_back_ios</span>
						</button>
					</c:otherwise>
				</c:choose>
				<c:forEach begin="${pageCnt.startPage}" end="${pageCnt.endPage}" var="i">
					<c:choose>
						<c:when test="${pageCnt.currPage eq i}">
							<button class="select-btn" id="btn${i}"
								onclick="location.href='board_list?page=${i}'">${i}</button>
						</c:when>
						<c:otherwise>
							<button id="btn${i}"
								onclick="location.href='board_list?page=${i}'">${i}</button>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${!pageCnt.isNext}">
						<button id="next-btn"
							style="color: rgb(192, 192, 192); cursor: default;">
							<span id="next" class="material-symbols-outlined">
								arrow_forward_ios </span>
						</button>
					</c:when>
					<c:otherwise>
						<button id="next-btn" style="color: black; cursor: pointer;"
							onclick="location.href='board_list?page=${pageCnt.next}'">
							<span id="next" class="material-symbols-outlined">arrow_forward_ios </span>
						</button>
					</c:otherwise>
				</c:choose>
			</c:otherwise>
		</c:choose>

	</div>

	<script src="./assets/post.js"></script>

</body>
</html>