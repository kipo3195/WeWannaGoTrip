<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

 <!-- Head -->
 <%@ include file="../../common/header.jsp" %>

<body>

  <!-- Navigation -->
  <%@ include file="../../common/navigation.jsp" %>

  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">제주 호텔  미리보기
       <small></small>
    </h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="#">평점순</a>&nbsp;/&nbsp;
        <a href="#">평점 + 낮은가격</a>&nbsp;/&nbsp;
        <a href="#">낮은가격순</a>&nbsp;/&nbsp;
        <a href="#">신규 등록순</a>
      </li>
    </ol>


    <!-- Project One -->

    <div class="row">
      <div class="col-md-7">
        <a href="#">
          <img class="img-fluid rounded mb-3 mb-md-0"  src="${pageContext.request.contextPath}/resources/img/jejuhotel/first.jpg" alt="">
        </a>
      </div>
      <div class="col-md-5">
        
        <h3>첫번째 제주호텔 이름</h3>
        <p>호텔의 간단한 소개가 들어갑니다<br/>
        	호텔의 가격이 들어갑니다<br/>
        	호텔의 평점이 들어갑니다<br/>
        	등록일 2021-01-01<br/></p>
        <a class="btn btn-primary" href="jejuHotel/Detail">호텔 상세보기
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Project Two -->
    <div class="row">
      <div class="col-md-7">
        <a href="#">
          <img class="img-fluid rounded mb-3 mb-md-0" src="${pageContext.request.contextPath}/resources/img/jejuhotel/second.jpg" alt="">
        </a>
      </div>
      <div class="col-md-5">
        <h3>두번째 제주호텔 이름</h3>
        <p>호텔의 간단한 소개가 들어갑니다<br/>
        	호텔의 가격이 들어갑니다<br/>
        	호텔의 평점이 들어갑니다<br/>
        	등록일 2021-01-01<br/></p>
        <a class="btn btn-primary" href="#">View Project
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Project Three -->
    <div class="row">
      <div class="col-md-7">
        <a href="#">
          <img class="img-fluid rounded mb-3 mb-md-0" src="${pageContext.request.contextPath}/resources/img/jejuhotel/third.jpg" alt="">
        </a>
      </div>
      <div class="col-md-5">
        <h3>세번째 제주호텔 이름</h3>
        <p>호텔의 간단한 소개가 들어갑니다<br/>
        	호텔의 가격이 들어갑니다<br/>
        	호텔의 평점이 들어갑니다<br/>
        	등록일 2021-01-01<br/></p>
        <a class="btn btn-primary" href="#">View Project
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Project Four -->
    <div class="row">

      <div class="col-md-7">
        <a href="#">
          <img class="img-fluid rounded mb-3 mb-md-0" src="${pageContext.request.contextPath}/resources/img/jejuhotel/4th.jpg" alt="">
        </a>
      </div>
      <div class="col-md-5">
        <h3>네번째 제주호텔 이름</h3>
        <p>호텔의 간단한 소개가 들어갑니다<br/>
        	호텔의 가격이 들어갑니다<br/>
        	호텔의 평점이 들어갑니다<br/>
        	등록일 2021-01-01<br/></p>
        <a class="btn btn-primary" href="#">View Project
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
    </div>
    
    <!-- /.row -->

    <hr>

    <!-- Pagination -->
  <!--   <ul class="pagination justify-content-center">
      <li class="page-item">
        <a class="page-link" href="#" aria-label="Previous">
          <span aria-hidden="true">&laquo;</span>
          <span class="sr-only">Previous</span>
        </a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">1</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">2</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">3</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#" aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
          <span class="sr-only">Next</span>
        </a>
      </li>
    </ul> -->

  </div>
  <!-- /.container -->

   <!-- Footer -->
   <%@ include file="../../common/footer.jsp" %>

  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script>
  
  function printList(list){
  var str = "";
  $(list).each(function(){
	  var hno = this.hno;
	  var hname = this.hname;
	  var haddress = this.haddress;
	  var hregistdate = this.hregistdate;
	  var hgrade = this.hgrade;
	  var hscore = this.hscore;
	  console.log(hno);
  });
  }
  
  </script>


</body>

</html>
