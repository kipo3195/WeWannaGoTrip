<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<!-- Head -->
 <%@ include file="../common/header.jsp" %>


<style>
	.selected{
		color : red;
	}
</style>


<body>

  <!-- Navigation -->
  <%@ include file="../common/navigation.jsp" %>
   
   <!-- Page Content -->
  <div class="container">

	 <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">자유게시판
      &nbsp;  <small>Board List</small>
    </h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="${pageContext.request.contextPath}">Home</a>
      </li>
      <li class="breadcrumb-item active"> List  </li>
      <li class="breadcrumb-item active"> 총 게시물 수 : ${totalCount}  </li>
    </ol>

    <div class="accordion">
  

  
   <c:forEach items="${articles}" var="article">
   <div>
  		<%-- 번호 : ${articles[0].id} --%> <!-- controller에서의 key값  -->
  		번호 : <a href="detail?id=${article.id}"> ${article.id}</a>
  		<br/>
  		작성 날짜 : ${article.regDate}
  		<br/>
  		 갱신 날짜 : ${article.updateDate}
  		<br/>
  		제목 : <a href="detail?id=${article.id}"> ${article.title}</a>
  		<br/>
  		<%--list에선 내용빼자 내용 : ${article.body} --%>
  		<br/>
  		<!-- prevent default -->
  		<a  onclick="if ( confirm('삭제하시겠습니까?') == false ) return false;" href="doDelete?id=${article.id}"> 삭제 </a> 
  		<a href="modify?id=${article.id}">  수정 </a>
  	</div>
  	<hr/>
  	</c:forEach>
  	
  	<div>
  	<a href="write">  글쓰기 </a>
  	</div>
  	
 <!-- Pagination -->
    <ul class="pagination justify-content-center">
    
     <!-- 처음 페이지로 이동버튼이 노출 될 필요가 있는지 여부 -->
  	 <c:set var="goFirstBtnNeedToShow" 
  	 		value="${page > pageMenuArmSize + 1}"/>
  	 
  	 <!-- 마지막 페이지로 이동버튼이 노출될 필요가 있는지 여부 --> 
  	 <c:set var="goLastBtnNeedToShow" value="true"/> <!-- 가장마지막페이지 true 보여줌 -->
    
    <c:if test="${goFirstBtnNeedToShow}">
      <li class="page-item">
        <a class="page-link" href="?page=1" aria-label="Previous">
          <span aria-hidden="true">&laquo;</span>
        </a>
      </li>
     </c:if>
    
      <c:forEach var="i" begin="${pageMenuStart}" end="${pageMenuEnd}">
      	<li class="page-item">
      		<c:set var="className" value="${i == page ? 'selected' : ''}" />
        	<a class="page-link ${className}"  href="?page=${i}">${ i }</a>
        	
        	<!-- 방금 노출된 페이지 번호가 마지막 페이지의 번호였다면, 마지막으로 이동하는 버튼이 노출되지않는다 -->
  			<c:if test="${i == totalPage}"> 	
  				<c:set var="goLastBtnNeedToShow" value="false"/>
  			</c:if>
      	</li>
      </c:forEach>	
      
      
     <!-- 마지막페이지로 이동버튼이 노출될 필요가 있다면 노출 -->
  	<c:if test="${goLastBtnNeedToShow}">
      <li class="page-item">
        <a class="page-link" href="?page=${totalPage}" aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
         </a>
      </li>
     </c:if>
    </ul>
  	
  	 </div>
  	  </div>
  	  <!-- /.container -->

   <!-- Footer -->
   <%@ include file="../common/footer.jsp" %>

   <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
</body>
</html>