<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
  <style>
	@font-face {
    font-family: 'Dovemayo-Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.0/Dovemayo-Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
	}

	*{
	font-family: 'Dovemayo-Bold';
	}
</style>  
    
<!-- Navigation -->
<!-- <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top"> -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top" style="height:20px">
  <div class="collapse navbar-collapse" id="navbarResponsive">
     <div class="container" >
  			<ul class="navbar-nav ml-auto">
  				
                 <!-- 로그인 했을때 처리 -->
                 <c:choose>
                 	<c:when test="${!empty sessionScope.memberInfo}">
                 		<li class="nav-item">
                  			<span class="nav-link">${memberInfo.mname} 님 어서오세요:)</span>      
                		</li>
                 		<li class="nav-item">
                  			<a class="nav-link" href="${pageContext.request.contextPath}/member/myPage">마이페이지</a>        
                		</li>
                		<li class="nav-item">
                   			<a class="nav-link" href="${pageContext.request.contextPath}/member/signOut">로그아웃</a>        
                		</li>
                 	</c:when>
                 		<c:when test="${!empty sessionScope.admin}">
                 		<li class="nav-item">
                  			<span class="nav-link">${admin.aname} 님 어서오세요:)</span>      
                		</li>
                 		<li class="nav-item">
                  			<a class="nav-link" href="${pageContext.request.contextPath}/admin/adminPage">관리자 페이지</a>        
                		</li>
                		<li class="nav-item">
                   			<a class="nav-link" href="${pageContext.request.contextPath}/admin/logout">로그아웃</a>        
                		</li>
                 	</c:when>
                 	<c:otherwise>
                 		<li class="nav-item">
                  			<a class="nav-link" href="${pageContext.request.contextPath}/member/signup">회원가입</a>
                  			<!-- 정원 ${pageContext.request.contextPath}/member/join-->
                 		</li>
                 		<li class="nav-item">
                   			<a class="nav-link" href="${pageContext.request.contextPath}/member/signin">로그인</a>        
                		</li>
                 	</c:otherwise>
                 </c:choose>
  			</ul>
  		</div>
  	</div>
  </nav>
  
 <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-primary fixed-top"
      style="top:20px;">
    <div class="container">
      <a  class="navbar-brand" href="${pageContext.request.contextPath}">
    	     <img src="${pageContext.request.contextPath}/resources/img/airplane.png" width="35px"/> 
             &nbsp; Bon Voyage 
       </a>   
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        	<span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/services">기획전</a>
            <!-- 훈 -->
          </li>
         <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             	커뮤니티
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
             <a class="dropdown-item" href="${pageContext.request.contextPath}/board/listReply">공지사항</a>
             <a class="dropdown-item" href="${pageContext.request.contextPath}/article/list">자유게시판</a>
            	
            </div>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             	국내여행
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
              <a class="dropdown-item" href="${pageContext.request.contextPath}/local/jeju">제주</a>
              <a class="dropdown-item" href="#">서울</a>
              <a class="dropdown-item" href="#">부산</a>
              <a class="dropdown-item" href="#">강원</a>
              <a class="dropdown-item" href="#">경상</a>
              <a class="dropdown-item" href="#">전라</a>
              <a class="dropdown-item" href="#">충청</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}" id="navbarDropdownBlog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Blog
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBlog">
              <a class="dropdown-item" href="${pageContext.request.contextPath}/blog-home-1 ">Blog Home 1</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/blog-home-2 ">Blog Home 2</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/blog-post ">Blog Post</a>
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}" id="navbarDropdownPages" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Other Pages
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPages">
              <a class="dropdown-item" href="${pageContext.request.contextPath}/about">회사소개</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/contact">오시는 길</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/full-width">Full Width Page</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/sidebar">Sidebar Page</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/faq">FAQ</a>
              <a class="dropdown-item" href="${pageContext.request.contextPath}/pricing">Pricing Table</a>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  
  <!-- 	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
		$("#a").on("auto", function(event){
			event.preventDefault();
		});
     </script> -->