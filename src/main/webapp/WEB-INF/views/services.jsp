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
    <h1 class="mt-4 mb-3">Event
      &nbsp;<small>기획전</small>
    </h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="${pageContext.request.contextPath}">Home</a>
      </li>
      <li class="breadcrumb-item active">Services</li>
    </ol>

    <!-- Image Header -->
    <img class="img-fluid rounded mb-4" 
    		src="resources/img/local/com.png" style="display:block; margin-left:auto; margin-right:auto" alt="광고">
    <!-- http://placehold.it/1200x300 -->

    <!-- Marketing Icons Section -->
    <div class="row">
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">A Luxurious Day</h4>
          <div class="card-body">
           <p class="card-text">
               <img src="resources/img/local/hiddenhotel.png" 
            	      style=" display:block; margin-left:auto; margin-right:auto;
            	       width:318px; height:244px; " /></p>
          </div>
          <div class="card-footer">
            <p class="card-text">품격있는 여행 :)
            <br/> 일상에 지친 나를 위해 
            <br/>Flex한 제주여행을 만나보세요.</p>
            <a href="#" class="btn btn-primary">Learn More</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header"> A Refreshing Day </h4>
          <div class="card-body">
           <img src="resources/img/local/olle.png" 
            	  style=" width:318px; height:300px;"/>
          </div>
          <div class="card-footer">
           <p class="card-text">'제주도 = 렌트' 라는 편견을 버려라!
           <br/> 대중교통으로 제주를 구석구석 누벼보는 
           <br/>알찬 여행을 만나보세요.</p>
         <!-- 직행버스 노선을 활용한 구석구석 누벼보는 알찬 제주여행을 만나보세요. -->
            <a href="#" class="btn btn-primary">Learn More</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">A Delicious Day</h4>
          <div class="card-body">
            <p class="card-text">	
            <img src="resources/img/local/food.jpg" 
            	   style=" width:318px; height:247px; "/></p>
          </div>
          <div class="card-footer">
          <p class="card-text">나만 알고싶은곳이 가득 :D
            <br/> 숨은 맛집만 찾아다니는 
            <br/>맛있는 제주여행을 만나보세요.</p>
            <!-- 흔하지 않고 나만 알고 싶은 그런곳이 가득! 숨은 맛집을 찾아서 여행하는 
            <br/>맛있는 제주여행을 만나보세요.-->
            <a href="#" class="btn btn-primary">Learn More</a>
          </div>
        </div>
      </div>
    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

   <!-- Footer -->
   <%@ include file="common/footer.jsp" %>
   
 
</body>

</html>
