<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<!-- Head -->
<%@ include file="../common/header.jsp"%>
<style>
table {
	margin: auto;
	text-align: center;
}
th{
	border-bottom : 1px solid #ccc;
	padding : 15px;
}

td {
	padding: 12px;
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
			문의 하기 &nbsp;<small>Board</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}">Home</a></li>
			<li class="breadcrumb-item active">회원님, 궁금하신점은 언제든지 물어보세요. </li>
		</ol>

		<c:set var="root" value="${pageContext.request.contextPath}" />

		<c:if test="${!empty memberInfo}">
			<h3>
				<a href="${pageContext.request.contextPath}/board/register">회원 글 작성</a>
			</h3>
		</c:if>
		<div>
			<select name="searchType">
				<option value="n">---------------------</option>
				<option value="t">제목</option>
				<option value="c">내용</option>
				<option value="w">작성자</option>
				<option value="tc">제목 &amp;&amp; 내용</option>
				<option value="cw">내용 &amp;&amp; 작성자</option>
				<option value="tcw">제목 &amp;&amp; 내용 &amp;&amp; 작성자</option>
			</select> <input type="text" name="keyword" id="keyword" /> <input
				type="button" id="searchBtn" value="SEARCH" />

			<%-- <c:if test="${!empty memberInfo}">
				<a href="register">WRITE BOARD</a>
			</c:if> --%>
		</div>

		<br />

		<table >
			<tr>
				<th>글번호</th>
				<th style="width: 300px;">제목</th>
				<th style="width: 280px;">작성자</th>
				<th style="width: 280px;">Update Date</th>
				<th>조회수</th>
			</tr>
			
			<!-- 게시글 목록  ${list} -->
			<c:choose>
				<c:when test="${!empty list}">
					<!-- 목록 출력 -->
					<c:forEach var="board" items="${list}">
						<!-- 변수 board라는 이름으로 저장. set. -->
						<c:choose>
							<c:when test="${board.showboard eq 'Y'}">
								<!-- 해당되는 게시글의 삭제유무를 판단. get메소드로 값을 가지고 옴. -->
								<tr>
									<td>${board.bno}</td>
									<!-- 4교시  title 링크추가-->
									<td><a
										href="readPage${pm.makeQuery(cri.page)}&bno=${board.bno}">
											<!-- 0205추가 --> <c:if test="${board.depth != 0}">
												<c:forEach var="i" begin="1" end="${board.depth}">
										&nbsp;&nbsp;&nbsp;&nbsp;
									</c:forEach>
									   τ
									</c:if> <c:out value="${board.title}" />
									</a></td>
									<td>${board.writer}</td>
									<td>${board.updatedate}</td>
									<td>${board.viewcnt}</td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr>
									<td></td>
									<td>삭제된 게시물 입니다</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="5">등록된 게시물이 없습니다</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table>
		<br />
		<br />


		<!-- Paging Block -->
		<%-- 
		<c:if test="${pm.prev}">
			<a href="listReply${pm.makeQuery(pm.startPage-1)}">이전</a> <!-- 이전페이지 한단계 앞으로 -->
		</c:if>
		<c:forEach var="i" begin="${pm.startPage}" end="${pm.endPage}">
			<a href="listReply${pm.makeQuery(i)}">${i}</a> <!-- 자동으로 query를 만들어 줌 -->
		</c:forEach>
		<c:if test="${pm.next}">
			<a href="listReply${pm.makeQuery(pm.endPage+1)}">다음</a>
		</c:if> --%>
		<!-- Pagination -->
		<ul class="pagination justify-content-center">
			<c:if test="${pm.prev}">
				<li class="page-item"><a class="page-link"
					href="listReply${pm.makeQuery(pm.startPage-1)}"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						<span class="sr-only">Previous</span>
				</a></li>
			</c:if>

			<c:forEach var="i" begin="${pm.startPage}" end="${pm.endPage}">
				<li class="page-item"><a class="page-link"
					href="listReply${pm.makeQuery(i)}">${i}</a></li>
			</c:forEach>
			<c:if test="${pm.next}">
				<li class="page-item"><a class="page-link"
					href="listReply${pm.makeQuery(pm.endPage+1)}" aria-label="Next">
						<span aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
				</a></li>
			</c:if>
		</ul>

		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<!-- form 태그이용해서 submit get방식 -->
		<script>
			$("#searchBtn").click(
					function() {
						var searchType = $("select option:selected").val();

						var keyword = $("#keyword").val();

						location.href = "listReply?searchType=" + searchType
								+ "&keyword=" + keyword;//검색
					});
		</script>

	</div>

	<!-- footer -->
	<%@ include file="../common/footer.jsp"%>

</body>
</html>