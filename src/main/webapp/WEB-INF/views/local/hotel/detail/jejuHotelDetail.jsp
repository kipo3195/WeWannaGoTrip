<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

 <!-- Head -->
 <%@ include file="../../../common/header.jsp" %>

<body>

  <!-- Navigation -->
  <%@ include file="../../../common/navigation.jsp" %>

  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">${hotel.hname}
      <small>${hotel.haddress}</small>
    </h1>

   <!--  <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="index.html">Home</a>
      </li>
      <li class="breadcrumb-item active">Portfolio Item</li>
    </ol> -->

    <!-- Portfolio Item Row -->
    <div class="row">

      <div class="col-md-8">
 		<iframe src="${hotel.hgooglemap}" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
      </div>

      <div class="col-md-4">
        <h3 class="my-3">${hotel.hname}</h3>
        <p>${hotel.hinfo}</p>
        <p>${hotel.htel}</p>
        <p>체크인 ${hotel.hcheckin} - 체크아웃 ${hotel.hcheckout}</p>
        <p>${hotel.hlikecnt}</p>
        <p>${hotel.hgrade}</p>
        <h3 class="my-3">부대시설</h3>
        <ul>
          <li>사용 편의 시설 1</li>
          <li>사용 편의 시설 2</li>
          <li>사용 편의 시설 3</li>
          <li>사용 편의 시설 4</li>
        </ul>
            <a href="#" class="btn btn-primary">예약하러가기</a>
      </div>

    </div>
    <!-- /.row -->



    <!-- Related Projects Row -->
    <h3 class="my-4">Related Projects</h3>

    <div class="row">

      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
          <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/jejuhotel/first/first1.jpeg" alt="">
        </a>
      </div>

      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
          <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/jejuhotel/first/first2.jpeg" alt="">
        </a>
      </div>

      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
          <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/jejuhotel/first/first3.jpeg" alt="">
        </a>
      </div>

      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
          <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/jejuhotel/first/first4.jpeg" alt="">
        </a>
      </div>

    </div>
    <!-- /.row -->
   
       <!-- Side Widget -->
        <div class="card my-4">
          <h5 class="card-header">실제 예약하신 고객님의 생생한 후기입니다</h5>
          <div class="card-body">
         	 <h5 class="mt-0">예약자 명</h5>
            You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
         	<!-- 사용자 닉네임 추가 -->
          </div>
        </div>


  </div>
  <!-- /.container -->

   <!-- Footer -->
   <%@ include file="../../../common/footer.jsp" %>
  
 
</body>

</html>
