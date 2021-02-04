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
    
    
    <!-- datepicker -->
    
    <div class="container px-1 px-sm-5 mx-auto">
    <form autocomplete="off">
        <div class="flex-row d-flex justify-content-center">
            <div class="col-lg-6 col-11 px-1">
                <div class="input-group input-daterange"> <input type="text" id="start" class="form-control text-left mr-2"> <label class="ml-3 form-control-placeholder" id="start-p" for="start">Start Date</label> <span class="fa fa-calendar" id="fa-1"></span> <input type="text" id="end" class="form-control text-left ml-2"> <label class="ml-3 form-control-placeholder" id="end-p" for="end">End Date</label> <span class="fa fa-calendar" id="fa-2"></span> </div>
            </div>
        </div>
    </form>
</div>


	<br/>
    <hr/>
	<br/>
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
    <!-- bootstrap -->
    <script>
    $(document).ready(function(){

    	$('.input-daterange').datepicker({
    	format: 'dd-mm-yyyy',
    	autoclose: true,
    	calendarWeeks : true,
    	clearBtn: true,
    	disableTouchKeyboard: true
    	});

    	});
    
    
    </script>

  </div>
  <!-- /.container -->

   <!-- Footer -->
   <%@ include file="../../../common/footer.jsp" %>
   
 
</body>

</html>
