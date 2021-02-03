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
    <h1 class="mt-4 mb-3">제주 호텔이름 1 
      <small>Reservation</small>
    </h1>
    
    
    

    <!-- Content Row -->
    <div class="row">
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h3 class="card-header">Luxury</h3>
          <div class="card-body">
            <div class="display-4">금액 표시</div>
            <div class="font-italic">per day</div>
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">잔여 객실</li>
            <li class="list-group-item">조식 포함&nbsp;<input type="checkbox">&nbsp;+ 추가 금액(원) </li>
            <li class="list-group-item">부가기능 추가 가능</li>
            <li class="list-group-item">
              <a href="${pageContext.request.contextPath}/credit" class="btn btn-primary">Sign Up!</a>
            </li>
          </ul>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card card-outline-primary h-100">
          <h3 class="card-header bg-primary text-white">Delux</h3>
          <div class="card-body">
          <div class="display-4">금액 표시</div>
            <div class="font-italic">per day</div>
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">잔여 객실</li>
            <li class="list-group-item">조식 포함&nbsp;<input type="checkbox">&nbsp;+ 추가 금액(원) </li>
            <li class="list-group-item">부가기능 추가 가능</li>
            <li class="list-group-item">
              <a href="#" class="btn btn-primary">Sign Up!</a>
            </li>
          </ul>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h3 class="card-header">double</h3>
          <div class="card-body">
          <div class="display-4">금액 표시</div>
            <div class="font-italic">per day</div>
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">잔여 객실</li>
            <li class="list-group-item">조식 포함&nbsp;<input type="checkbox">&nbsp;+ 추가 금액(원) </li>
            <li class="list-group-item">부가기능 추가 가능</li>
            <li class="list-group-item">
              <a href="#" class="btn btn-primary">Sign Up!</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
         <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h3 class="card-header">Single</h3>
          <div class="card-body">
          <div class="display-4">금액 표시</div>
            <div class="font-italic">per day</div>
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item">잔여 객실</li>
            <li class="list-group-item">조식 포함&nbsp;<input type="checkbox">&nbsp;+ 추가 금액(원) </li>
            <li class="list-group-item">부가기능 추가 가능</li>
            <li class="list-group-item">
              <a href="#" class="btn btn-primary">Sign Up!</a>
            </li>
          </ul>
        </div>
      </div>
    
    
    <!-- /.row -->

  </div>
  <!-- /.container -->

   <!-- Footer -->
   <%@ include file="../../../common/footer.jsp" %>
   
  <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
