<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

 <!-- Head -->
 <%@ include file="../common/header.jsp" %>

<body>

  <!-- Navigation -->
  <%@ include file="../common/navigation.jsp" %>
   
  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">관리자 페이지
<!--       <small>Subheading</small> -->
    </h1>

 <!--    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="index.html">Home</a>
      </li>
      <li class="breadcrumb-item active">About</li>
    </ol> -->

	<!-- 비동기 처리로 각각 기능 구현해주기 -->
    <!-- Content Row -->
    <div class="row">
      <!-- Sidebar Column -->
      <div class="col-lg-3 mb-4">
        <div class="list-group">
          <a href="#" class="list-group-item">회원 정보관리</a>
          <a href="${pageContext.request.contextPath}/admin/hotelRegPage" class="list-group-item">호텔 정보 등록</a>
          <a href="#" class="list-group-item">카페 및 식당 정보 등록</a>
          <a href="#" class="list-group-item">관광지 정보 등록</a>
          <a href="#" class="list-group-item">공지사항 등록</a>
          <a href="#" class="list-group-item">기획전 등록</a>
          <a href="#" class="list-group-item">광고등록</a>
          
          
          

  
        </div>
      </div>
      <!-- Content Column -->
      <div class="col-lg-9 mb-4">
        <h2>관리자님 반갑습니다:) <br/>
        	 </h2>
        <p>회원 적립금 순위</p>
        <p>호텔 평점 순위</p>
        <p>카페 평점 순위</p>
        <p>인기 관광지</p>
      </div>
    </div>
    <!-- /.row -->

  	</div>
  	<!-- /.container -->

   	<!-- Footer -->
   	<%@ include file="../common/footer.jsp" %>

 
</body>

</html>
