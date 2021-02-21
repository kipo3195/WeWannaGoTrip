<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@ include file="common/header.jsp" %>
</head>
<body>

 <%@ include file="common/navigation.jsp" %>
 <div class="container py-5">

  <!-- For demo purpose -->
  <div class="row mb-4">
    <div class="col-lg-8 mx-auto text-center">
      <h1 class="display-4">결제 페이지</h1>
      <p class="lead mb-0">회원님의 행복한 여정에 대한 요금 안내 페이지 입니다.</p>
      <br>
      <p class="lead mb-0">기간 : ${totalin} ~ ${totalout}</p>
      <p class="lead mb-0">호텔이름 : ${hname}</p>
      <p class="lead mb-0">호텔등급 : ${grade}</p>
      <p class="lead mb-0">Room Grade : ${room}</p>
    </div>
  </div>
  <!-- End -->
  <!-- 총 결제 요금 보여주기 -->
	<div class="col-lg-8 mx-auto text-center">
		  <p class="lead mb-0">결제할 요금 : ${price} 원</p>
	</div>

  <div class="row">
    <div class="col-lg-7 mx-auto">
      <div class="bg-white rounded-lg shadow-sm p-5">
        <!-- Credit card form tabs -->
        <ul role="tablist" class="nav bg-light nav-pills rounded-pill nav-fill mb-3">
          <li class="nav-item">
            <a data-toggle="pill" href="#nav-tab-card" class="nav-link active rounded-pill">
                                <i class="fa fa-credit-card"></i>
                                Credit Card
                            </a>
          </li>
          <li class="nav-item">
            <a data-toggle="pill" href="#nav-tab-paypal" class="nav-link rounded-pill">
                                <i class="fa fa-paypal"></i>
                                실시간 계좌 이체
                            </a>
          </li>
          <li class="nav-item">
            <a data-toggle="pill" href="#nav-tab-bank" class="nav-link rounded-pill">
                                <i class="fa fa-university"></i>
                                	네이버 페이결제
                             </a>
          </li>
        </ul>
        <!-- End -->


        <!-- Credit card form content -->
        <div class="tab-content">
          <!-- credit card info-->
          <div id="nav-tab-card" class="tab-pane fade show active" id="nameCheckable">
	          	<div id="check">
	          	 	 <p class="alert alert-danger">입력된 정보가 없거나 일치 하지 않습니다.</p>
	            </div>
            <form role="form" action="creditConfirm" method="POST">
              <div class="form-group">
                <label for="username">성함을 입력해 주세요.</label>
                <input type="text" id="idCheck" name="username" placeholder="ENTER YOUR NAME" required="required" class="form-control">
              </div>
              <div class="form-group">
                <label for="cardNumber">카드 번호를 입력해주세요.</label>
                <div class="input-group">
                  <input type="text" name="cardNumber" placeholder="해당서비스는 준비중입니다" disabled="disabled" class="form-control" required>
                  <div class="input-group-append">
                    <span class="input-group-text text-muted">
                                                <i class="fa fa-cc-visa mx-1"></i>
                                                <i class="fa fa-cc-amex mx-1"></i>
                                                <i class="fa fa-cc-mastercard mx-1"></i>
                                            </span>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-8">
                  <div class="form-group">
                    <label><span class="hidden-xs">카드 등록 정보를 입력해 주세요.</span></label>
                    <div class="input-group">
                      <input type="number" placeholder="준비중" name="" disabled="disabled" class="form-control" required>
                      <input type="number" placeholder="준비중" disabled="disabled" name="" class="form-control" required>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="form-group mb-4">
                    <label data-toggle="tooltip" title="Three-digits code on the back of your card">CVV
                                                <i class="fa fa-question-circle"></i>
                                            </label>
                    <input type="text" required class="form-control" placeholder="준비중" disabled="disabled">
                  </div>
                </div>
              </div>
              <div>
				<table>
					<tr>
						<td>
							<input type="hidden" name="hno" value="${hno}"/>
							<input type="hidden" name="mno" value="${memberInfo.mno}"/>
							<input type="hidden" name="totalin" value="${totalin}"/>
							<input type="hidden" name="totalout" value="${totalout}"/>
							<input type="hidden" name="price" value="${price}"/>
							<input type="hidden" name="room" value="${room}"/>
						</td>
					</tr>
					
				</table>
			
              </div>
              <button type="submit" class="subscribe btn btn-primary btn-block rounded-pill shadow-sm" disabled="disabled" id="ConfirmBtn"> Confirm  </button>
            </form>
          </div>
          <!-- End -->

          <!-- Paypal info -->
          <div id="nav-tab-paypal" class="tab-pane fade">
           <br/>
            <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;실시간 계좌이체 서비스 준비중</h2>
            <br/>
            <dl>
              <dt>빠른 시일 내로 찾아 뵙도록 하겠습니다. 불편을 드려 죄송합니다.</dt>
              <dd> - WeWannaGoTrip</dd>
            </dl>
          </div>
          <!-- End -->

          <!-- bank transfer info -->
          <div id="nav-tab-bank" class="tab-pane fade">
            <br/>
            <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;네이버 페이 결제 서비스 준비중</h2>
            <br/>
            <dl>
              <dt>빠른 시일 내로 찾아 뵙도록 하겠습니다. 불편을 드려 죄송합니다.</dt>
              <dd> - WeWannaGoTrip</dd>
            </dl>
           
          </div>
          <!-- End -->
        </div>
        <!-- End -->

      </div>
    </div>
  </div>
</div>
 
 
 <%@ include file="common/footer.jsp" %>
 
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


	<script>
     
		var username = "${memberInfo.mname}";
		$("#idCheck").on("input",function(){
			//정보 확인 후, confirm 활성화 , 비활성화 
			 var name = $(this).val();
			 if(name === username){
				 var str = "<p class='alert alert-success'>등록된 정보와 일치합니다 서둘러 예약하세요!</p>";
				 $("#check").html(str);
				 	$("#ConfirmBtn").attr("disabled",false);
				 
			 }else{
				 var strback = "<p class='alert alert-danger'>입력된 정보가 없거나 일치 하지 않습니다.</p>";
				 $("#check").html(strback);
					 $("#check").html(str);
					 	$("#ConfirmBtn").attr("disabled",true);
			 }
		});
	
	</script>






</body>
</html>