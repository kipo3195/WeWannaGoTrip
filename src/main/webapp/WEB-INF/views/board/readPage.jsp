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
.a {
	width : 300px;
	text-align:center;
}

td { 
	text-align : left;
}

/* th {
	text-align : center;
} */
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
			글 상세보기 &nbsp;<small>Board</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}">Home</a></li>
			<li class="breadcrumb-item active">회원만 답변글 작성 가능합니다.</li>
		</ol>
		<%-- <h1>
			<a href="${pageContext.request.contextPath}">HOME</a>
		</h1> --%>
		
		<section id="container">
		<table class="table table-hover">
		
			<tr>
			
				<td class="a">제목</td>
				
				<td><c:out value="${board.title}" /></td>
				
			</tr>
			
			<tr>
				<td class="a">작성자</td>
				<td ><c:out value="${board.writer}" /></td>
			</tr>
			<tr>
				<td class="a">내용</td>
				<td><pre style="font-size:15px; font-weight:bold;" ><c:out value="${board.content}"/></pre> 
					<!-- <pre> 저장한 문자열 줄바꿈을 그대로 표현 --></td>
			</tr>
			
			<tr>
				<td colspan="2"><c:if test="${!empty memberInfo }">
						<c:if test="${memberInfo.mno eq board.uno}">
							<!-- 작성 게시자와 로그인한 작성자가 같을때 -->
							<input type="button" id="modifyBtn" class="replyUpdateBtn btn btn-warning" value="MODIFY" />
							<input type="button" id="removeBtn" class="replyDeleteBtn btn btn-danger" value="REMOVE" />
						</c:if>
						<!-- 로그인 완료한 사용자 -->
						<input type="button" id="replyBtn" class="replyWriteBtn btn btn-success" value="REPLY" />
					</c:if> <!-- 전체 사용자 --> <input type="button" class="replyWriteBtn btn btn-primary" id="listBtn" value="LIST" />
				</td>
			</tr>
		</table>
	</section>	
		<form id="readForm">
			<input type="hidden" name="bno" value="${board.bno}" /> <input
				type="hidden" name="page" value="${cri.page}" /> <input
				type="hidden" name="perPageNum" value="${cri.perPageNum}" /> <input
				type="hidden" name="searchType" value="${cri.searchType}" /> <input
				type="hidden" name="keyword" value="${cri.keyword}" /> <input
				type="hidden" name="csrf_token" value="${csrf_token}" />
		</form>
	</div>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
		var obj = $("#readForm");

		$("#listBtn").click(function() {
			obj.attr("action", "listReply").submit();
		});

		$("#replyBtn").click(function() {
			obj.attr("action", "replyRegister").submit();
		});
		//수정페이지
		$("#modifyBtn").click(function() {
			obj.attr("action", "modifyPage").submit();
		});

		$("#removeBtn").click(function() {
			if (confirm("정말로 진짜로 삭제하시겠습니까? :( ")) {
				obj.attr("action", "remove");
				obj.attr("method", "post");
				obj.submit();
			}
		});
	</script>


	<!-- footer -->
	<%@ include file="../common/footer.jsp"%>

</body>
</html>