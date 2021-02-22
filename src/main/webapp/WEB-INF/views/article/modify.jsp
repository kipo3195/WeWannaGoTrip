<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<!-- Head -->
<%@ include file="../common/header.jsp"%>

<body>
	<!-- Navigation -->
	<%@ include file="../common/navigation.jsp"%>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading -->
		<h1 class="mt-4 mb-3">
			게시글 상세보기 &nbsp; <small>Board Detail</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}">Home</a></li>
			<li class="breadcrumb-item active">게시물 번호 : ${article.id }</li>
		</ol>


		<form action="doModify" method="POST">
			<input type="hidden" name="id" value="${article.id}" />
			<!-- input만 값이 날라가기때문에 type="text"  readonly="readonly" -->
			<div>번호 : ${article.id}</div>
			<div>작성 날짜 : ${article.regDate}</div>
			<div>수정 날짜 : ${article.updateDate}</div>
			<div>
				제목 : <input type="text" maxlength="30" placeholder="제목을 입력해주세요."
					name="title" value="${article.title}" />
			</div>
			<div>
				내용 : <input type="text" maxlength="30" placeholder="내용을 입력해주세요."
					name="body" value="${article.body}" />
			</div>
			<div>
				수정완료 : <input type="submit" value="수정" />
			</div>
		</form>

	</div>

	<!-- Footer -->
	<%@ include file="../common/footer.jsp"%>

	<!-- Bootstrap core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>