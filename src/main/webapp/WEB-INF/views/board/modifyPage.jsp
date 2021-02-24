<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<!-- Head -->
<%@ include file="../common/header.jsp"%>

<style>
	table{
		margin : auto;
	}
</style>

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<body>
	<!-- Navigation -->
	<%@ include file="../common/navigation.jsp"%>


	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			글 수정하기 &nbsp;<small>글 번호 - ${board.bno}</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}">Home</a></li>
			<li class="breadcrumb-item active">회원님, 글 수정 부탁드립니다.</li>
		</ol>
		
		<h3></h3>
		<!-- /board/register -->
		<section id="container">
		<form action="modifyPage" method="post">
			<table class="table table-hover">
				<tr>
					<td>제목</td>
					<td><input type="text" name="title" size="50" value="${board.title}"
						required /></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="writer" size="50"
						value="${memberInfo.mname}" readonly /></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="content" cols="50" rows="15">${board.content}</textarea>
					</td>
				</tr>
				<tr>
					<td colspan=2><input type="submit" class="replyWriteBtn btn btn-secondary" value="수정완료" /></td>
				</tr>
			</table>
			<%-- <input type="hidden" name="bno" value="${board.bno}"/>
		<input type="hidden" name="uno" value="${userInfo.uno}"/> --%>
			<input type="hidden" name="bno" value="${board.bno}" /> <input
				type="hidden" name="page" value="${cri.page}" /> <input
				type="hidden" name="perPageNum" value="${cri.perPageNum}" /> <input
				type="hidden" name="searchType" value="${cri.searchType}" /> <input
				type="hidden" name="keyword" value="${cri.keyword}" />
		</form>
	  </section>
	</div>
	
	<!-- footer -->
	<%@ include file="../common/footer.jsp"%>
	
</body>
</html>


