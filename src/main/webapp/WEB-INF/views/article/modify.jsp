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

		<!-- Page Heading -->
		<h1 class="mt-4 mb-3">
			공지글 수정하기&nbsp; <small>Notice Update</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}">Home</a></li>
			<li class="breadcrumb-item active">공지글 번호 : ${article.id }</li>
		</ol>

<section id="container">
   
		<form action="doModify" method="POST">
		  <table class="table table-hover">
		  	<tr>
		  		<td class="a">
		  			<input type="hidden" name="id" value="${article.id}" />
		  			번호
		  		</td>
		  		<td>
		  			${article.id}
		  		</td>	
		  	</tr>
		  	<tr>
		  		<td class="a">
		  			작성 날짜
		  		</td>
		  		<td>
		  			${article.regDate}
		  		</td>	
		  	</tr>
		  	<tr>
		  		<td class="a">
		  			수정 날짜
		  		</td>
		  		<td>
		  			${article.updateDate}
		  		</td>	
		  	</tr>
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
		  			<input type="submit" class="replyWriteBtn btn btn-secondary" value="수정완료" />
		  		</td>
		  		
		  	</tr>
			<%-- 
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
			</div> --%>
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