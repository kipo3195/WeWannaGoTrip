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
			게시글 상세보기 &nbsp; <small>Board Detail</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}">Home</a></li>
			<li class="breadcrumb-item active">게시물 번호 : ${article.id}</li>
		</ol>


		<div>제목 : ${article.title }</div>
		<div>내용 : ${article.body }</div> 
		<br /> 
			<a href="list"> 리스트로 이동 </a><br /> 
		<c:choose>
			<c:when test="${!empty admin}">
				<div>
					<div>
						<a onclick="if ( confirm('삭제하시겠습니까?') == false ) return false;"
						   href="doDelete?id=${article.id}"> 삭제 </a> 
						<a href="modify?id=${article.id}"> 수정 </a>
					</div>
			  	</div>	
			</c:when>  	
  		</c:choose>

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