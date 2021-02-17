<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<!-- Head -->
 <%@ include file="../common/header.jsp" %>


<body>

  <!-- Navigation -->
  <%@ include file="../common/navigation.jsp" %>
   
   <!-- Page Content -->
  <div class="container">

	 <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">공지사항
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
  	
  	<div>
  		<c:forEach var="i" begin="1" end="${totalPage}">
  			<a href="?page=${i}">${ i } </a>
  		</c:forEach>
  	</div>
  	
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