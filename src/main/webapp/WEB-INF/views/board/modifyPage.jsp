<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<!-- Head -->
<%@ include file="../common/header.jsp"%>

<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<body>
	<!-- Navigation -->
	<%@ include file="../common/navigation.jsp"%>


	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			회원게시판 &nbsp;<small>Notice</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}">Home</a></li>
			<li class="breadcrumb-item active">회원</li>
		</ol>
		${pageContext.request.contextPath}
		<h1>
			<a href="${pageContext.request.contextPath}">HOME</a>
		</h1>
		<h3>MODIFY BOARD - ${board.bno}</h3>
		<!-- /board/register -->
		<form action="modifyPage" method="post">
			<table>
				<tr>
					<td>제목</td>
					<td><input type="text" name="title" value="${board.title}"
						required /></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="writer"
						value="${memberInfo.mname}" readonly /></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="content" cols="50" rows="30">${board.content}</textarea>
					</td>
				</tr>
				<tr>
					<td colspan=2><input type="submit" value="수정완료" /></td>
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

	</div>
	
	<!-- footer -->
	<%@ include file="../common/footer.jsp"%>
	
</body>
</html>


