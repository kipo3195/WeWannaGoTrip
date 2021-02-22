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

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			게시글 작성 &nbsp; <small>Board Write</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}">Home</a></li>
		</ol>

		<!-- action  : URL의 물음표 전의 내용
  			              /article/Write 에서 /article/doWrite로 이동	 -->
		<form action="doWrite" method="POST">
			<div>
				<!-- name값 중요 -->
				제목 : <input type="text" maxlength="30" placeholder="제목을 입력해주세요."
							name="title" />
			</div>
			<div>
				내용 : <input type="text" maxlength="30" placeholder="내용을 입력해주세요."
							name="body" />
			</div>
			<div>
				제출 : <input type="submit" value="작성" />
			</div>
		</form>
		<div>
			<a href="list">리스트</a>
		</div>

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