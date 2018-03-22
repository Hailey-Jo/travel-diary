<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="utf-8"/>   

<div class="menu_table">
	<ul style="width: 100%;">	
		<li class="title">답변형게시판</li>
		<li class="subtitle">답변형게시판</li>	
		<li class="menu_item">
			<a href="#none" onclick="url_bbslist()" title="글목록">글목록</a>
		</li>
		<li class="menu_item">
			<a href="#none" onclick="url_bbswrite()" title="글쓰기">글쓰기</a>
		</li>
		<li class="menu_item">
			<a href="#none" onclick="url_calWrite()" title="일정관리">일정관리</a>
		</li>
	
	</ul>
</div>

<script>

function url_logout() {
	alert("안녕히 가십시오");
	location.href = "logout.do";
}

function url_bbslist() {
	alert("글 목록입니다");
	location.href = "bbslist.do";
}

function url_calWrite() {
	alert("일정관리 입니다.");
	location.href = "calendar.do";
}







</script>




