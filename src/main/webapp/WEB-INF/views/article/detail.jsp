<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<!-- Head -->
<%@ include file="../common/header.jsp"%>

<style>
table{
	margin : auto;
}
.a {
	width : 300px;
	text-align:center;
}

td { 
	text-align : left;
}

</style>

<body>
	<!-- Navigation -->
	<%@ include file="../common/navigation.jsp"%>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			공지글 상세보기 &nbsp; <small>Notice Detail</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}">Home</a></li>
			<li class="breadcrumb-item active">공지글 번호 : ${article.id}</li>
		</ol>
	
	<section id="container">
		<table class="table table-hover">
			<tr>
				<td class="a">제목</td>
				<td>
					<c:out value="${article.title}" />
				</td>
			</tr>
			<tr>
				<td class="a">내용</td>
				<td>
					<c:out value="${article.body}" />
				</td>
			</tr>
			
		</table>
     </section>

		<br /> 
			<a href="list" class="replyWriteBtn btn btn-primary"> 리스트로 이동 </a><br/><br/> 
		<c:choose>
			<c:when test="${!empty admin}">
				<div>
					<div>
						<a onclick="if ( confirm('삭제하시겠습니까?') == false ) return false;"
						   href="doDelete?id=${article.id}" class="replyDeleteBtn btn btn-danger"> 삭제 </a> 
						<a href="modify?id=${article.id}" class="replyUpdateBtn btn btn-warning"> 수정 </a>
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