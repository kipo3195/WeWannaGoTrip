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
			공지글 작성 &nbsp; <small>Notice Write</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}">Home</a></li>
		</ol>

<section id="container">
		<!-- action  : URL의 물음표 전의 내용
  			              /article/Write 에서 /article/doWrite로 이동	 -->
		<form action="doWrite" method="POST">
			<table class="table table-hover">
			<tr>
		  		<td class="a">
		  			제목
		  		</td>
		  		<td>
		  			<input type="text" name="title" size="40" value="${article.title}"
						required />
		  		</td>	
		  	</tr>
		  	<tr>
		  		<td class="a">
		  			내용
		  		</td>
		  		<td>
		  			<textarea name="body" cols="40" rows="10">${article.body}</textarea>
		  		</td>	
		  	</tr>
		  	<tr>
		  		<td colspan=2>
		  			<input type="submit" class="replyWriteBtn btn btn-secondary" value="작성완료" />
		  			<a href="list" class="replyWriteBtn btn btn-primary" >리스트</a>
		  		</td>
		  		
		  	</tr>
			</table>
		</form>
		

</section>
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