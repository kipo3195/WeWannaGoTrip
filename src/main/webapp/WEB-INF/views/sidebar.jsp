<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

 <!-- Head -->
 <%@ include file="common/header.jsp" %>

<body>

  <!-- Navigation -->
  <%@ include file="common/navigation.jsp" %>
   
  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">마이 페이지
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
          <a href="#" class="list-group-item">내 예약 확인 하기</a>
          <a href="#" class="list-group-item">내가 찜한 여행 정보 확인</a>
          <a href="#" class="list-group-item">내 정보 수정</a>
          <a href="#" class="list-group-item">내가 작성한 댓글</a>
          <a href="#" class="list-group-item">내 문의 내역</a>
          <a href="#" class="list-group-item">필요한 용도에 따라 사용</a>
          <a href="#" class="list-group-item">필요한 용도에 따라 사용</a>
          <a href="#" class="list-group-item">필요한 용도에 따라 사용</a>
          <a href="#" class="list-group-item" style="color:red; ">회원 탈퇴</a>
        </div>
      </div>
      <!-- Content Column -->
      <div class="col-lg-9 mb-4">
        <h2>회원님 반갑습니다. <br/>
        	  간단한 계정 정보 및 등급 을 보여줍니다.</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta, et temporibus, facere perferendis veniam beatae non debitis, numquam blanditiis necessitatibus vel mollitia dolorum laudantium, voluptate dolores iure maxime ducimus fugit.</p>
      </div>
    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

   <!-- Footer -->
   <%@ include file="common/footer.jsp" %>

  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
