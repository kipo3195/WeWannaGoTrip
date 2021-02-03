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
    
    
    <h2 class="mt-4 mb-3">
      <small>세계가 인정한 천혜의 자연경관</small>
      	제주	
    </h2>

 <!--    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="home">Home</a>
      </li>
      <li class="breadcrumb-item active">Blog Home 1</li>
    </ol> -->

    <div class="row">

      <!-- Blog Entries Column -->
      <div class="col-md-8">

          <!-- Blog Post -->
        <div class="card mb-4">
          <img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/jejuhotel/hotelmain.jpg" alt="">
          <div class="card-body">
            <h2 class="card-title">제주 호텔 미리보기</h2>
            <p class="card-text">천혜 경관 제주에 어울리는 품격있는 호텔을 찾아 숙박해 보세요.</p>
            <a href="${pageContext.request.contextPath}/local/jejuhotel" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>

        <!-- Blog Post -->
        <div class="card mb-4">
          <img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/jejuCafeRes/cafeResmain.jpeg" alt="">
          <div class="card-body">
            <h2 class="card-title">제주 식당 및 카페 정보</h2>
            <p class="card-text">입으로 한번 눈으로 또 한번! 모두가 만족하는 제주 카페와 식당 정보를 손쉽게 찾을 수 있습니다.</p>
            <a href="${pageContext.request.contextPath}/local/jejuCafeRes" class="btn btn-primary">Read More &rarr;</a>
          </div>
          </div>
   

        <!-- Blog Post -->
        <div class="card mb-4">
          <img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/local/mmyjeju.jpeg" 
                alt="Card image cap" style="height:350px;">
          <div class="card-body">
            <h2 class="card-title">나만 알고 싶은 제주 여행 정보</h2>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
            <a href="${pageContext.request.contextPath}/local/jejuInfo" class="btn btn-primary">Read More &rarr;</a>
          </div>
          <div class="card-footer text-muted">
    
          </div>
        </div>

        <!-- Pagination -->
    <!--     <ul class="pagination justify-content-center mb-4">
          <li class="page-item">
            <a class="page-link" href="#">&larr; Older</a>여기에서 다른 지역으로 한번에 이동할 수 있게 만들어보기
          </li>
          <li class="page-item disabled">
            <a class="page-link" href="#">Newer &rarr;</a>
          </li>
        </ul> -->

      </div>

      <!-- Sidebar Widgets Column -->
      <div class="col-md-4">

        <!-- Search Widget -->
        <div class="card mb-4">
          <h5 class="card-header">Search</h5>
          <div class="card-body">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search for...">
              <span class="input-group-append">
                <button class="btn btn-secondary" type="button">Go!</button>
              </span>
            </div>
          </div>
        </div>
<!--  -->
        <!-- Categories Widget -->
        <div class="card my-4">
          <h5 class="card-header">국내 지역</h5>
          <div class="card-body">
            <div class="row">
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#">부산</a>
                  </li>
                  <li>
                    <a href="#">서울</a>
                  </li>
                  <li>
                    <a href="#">경남</a>
                  </li>
                </ul>
              </div>
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#">충청</a>
                  </li>
                  <li>
                    <a href="#">강원</a>
                  </li>
                  <li>
                    <a href="#">전라</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <!-- Side Widget -->
        <div class="card my-4">
          <h5 class="card-header">Side Widget</h5>
          <div class="card-body">
            You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
          </div>
        </div>

      </div>

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
 <%@ include file="../common/footer.jsp" %>

 
</body>

</html>

