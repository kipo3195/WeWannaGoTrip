<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

 <!-- Head -->
 <%@ include file="common/header.jsp" %>

<style>
   h2, h3{
        font-family: 'Yusei Magic', sans-serif;
    }
</style>

<body>

  <!-- Navigation -->
  <%@ include file="common/navigation.jsp" %>

  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h2 class="mt-4 mb-3">Better Planet, Better Travel
         &nbsp; <small>더 나은 세상, 더 나은 여행</small> 
    </h2>
    <!-- <h1 class="mt-4 mb-3">We Wanna Go Trip
         &nbsp; <small>About</small> 
    </h1> -->

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="index.html">Home</a>
      </li>
      <li class="breadcrumb-item active">About</li>
    </ol> <br/>

    <!-- Intro Content -->
    <!--#0ABCB4  #1E821E  #00abc9 #1199b7-->
    <div class="row" style="text-align:center;">
      <div class="col-lg-6">
        	<img class="img-fluid rounded mb-4" src="resources/img/about_img03.png" width=340px height=340px alt="">
          		<h3><b>여행자에게는 최고의 여행</b></h3> <br/> 
        		<h3 style="color:#0c8e7d;">Delight Traveler</h3>
        	<p style="font-size:16px">현지 문화와 역사, 그리고 현지인이 함께하는 경험으로<br/> 당신의 일상까지 변화를 주는 여행입니다.</p>
      </div>
      <div class="col-lg-6">
      		<img class="img-fluid rounded mb-4" src="resources/img/about_img01.png" width=340px height=340px alt="">
        		<h3><b>여행지에는 최선의 기여</b></h3> <br/> 
        		<h3 style="color:#0c8e7d;">Benefit Local</h3>
       	 <p style="font-size:16px"> 여행경비가 지역민에게 직접 전달되어<br/>지역경제를 살리는 여행입니다.</p>
      </div>
    </div>
    <!-- /.row -->
    <hr/><br/>
    <!-- Team Members -->
    <h2 >Our Team</h2>

    <div class="row" >
      <div class="col-lg-4 mb-4">
        <div class="card h-100 text-center">
          <img class="card-img-top" src="resources/img/won.JPG"  alt="">
          <!-- src="http://placehold.it/750x450" -->
          <div class="card-body">
            <h4 class="card-title">차정원</h4>
            <h6 class="card-subtitle mb-2 text-muted">Position</h6>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus aut mollitia eum ipsum fugiat odio officiis odit.</p>
          </div>
          <div class="card-footer">
            <a href="#">cming2220@naver.com</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100 text-center">
          <img class="card-img-top" src="http://placehold.it/750x450" alt="">
          <div class="card-body">
            <h4 class="card-title">김훈</h4>
            <h6 class="card-subtitle mb-2 text-muted">Position</h6>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus aut mollitia eum ipsum fugiat odio officiis odit.</p>
          </div>
          <div class="card-footer">
            <a href="#">bse3808@gmail.com</a>
          </div>
        </div>
      </div>
    </div>
    <!-- /.row -->

    <!-- Our Customers -->
   <!--  <h2>Our Customers</h2>
    <div class="row">
      <div class="col-lg-2 col-sm-4 mb-4">
        <img class="img-fluid" src="http://placehold.it/500x300" alt="">
      </div>
      <div class="col-lg-2 col-sm-4 mb-4">
        <img class="img-fluid" src="http://placehold.it/500x300" alt="">
      </div>
      <div class="col-lg-2 col-sm-4 mb-4">
        <img class="img-fluid" src="http://placehold.it/500x300" alt="">
      </div>
      <div class="col-lg-2 col-sm-4 mb-4">
        <img class="img-fluid" src="http://placehold.it/500x300" alt="">
      </div>
      <div class="col-lg-2 col-sm-4 mb-4">
        <img class="img-fluid" src="http://placehold.it/500x300" alt="">
      </div>
      <div class="col-lg-2 col-sm-4 mb-4">
        <img class="img-fluid" src="http://placehold.it/500x300" alt="">
      </div>
    </div> -->
    <!-- /.row -->

  </div>
  <!-- /.container -->


 <!-- footer -->
 <%@ include file="common/footer.jsp" %>
 
 
  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
