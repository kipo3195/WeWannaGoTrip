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
      <small>예약 하기</small>
    </h1>
    
    
    <!-- datepicker -->
	<table>    
		<tr>
			<td>
			 	체크인 날짜를 선택 하세요
			</td>
			<td>		
 				<input type="text" id="checkin">
			</td>		
			<td>
				<input type="button" id="checkinBtn" value="예약조회"/>
			</td>
			<td>
				<input type="button" id="checkinCancel" value="취소"/>
			</td>
		</tr>	
		<tr>
			<td>
			 	체크아웃 날짜를 선택 하세요
			</td>
			<td>		
 				<input type="text" id="checkout">
			</td>	
		</tr>
		<tr>
			<td>
				<input type="hidden" value="${hotel.hno}" id="hno"/>
			</td>
		</tr>
		
   </table>
   
   <script>
   
   		var hno = $("#hno").val();
   		
   
	    $("#checkin").datepicker({
		});
		        
        
        $("#checkout").datepicker({
        });
        
        //체크인 버튼 눌려졌을때.
        $("#checkinBtn").click(function(){
        	console.log(hno);
             var weeks =['일','월','화','수','목','금','토'];
             var pricemag =[1.6,1,1,1.2,1.4,1.6,2];
        	 var checkin = $("#checkin").val();
        	 var checkout = $("#checkout").val();
        	
        	 //오늘날짜 구하기
   		     var date = new Date();
   		     var year = date.getFullYear();
   		     var month = ("0" + (1 + date.getMonth())).slice(-2);
   		     var day = ("0" + date.getDate()).slice(-2);
   		     var today = year+month+day; //오늘날짜
   		     console.log(today);
        	
        	 
             var iyyyy = checkin.substr(6,4);
			 var imm = checkin.substr(0,2);
			 var idd = checkin.substr(3,2);
			 var checkindate = iyyyy+imm+idd; //오늘날짜와 비교하기 위한 값
			 
			 //체크인 요일
             var checkinDay = weeks[new Date(iyyyy,imm,idd).getDay()];
             console.log(checkinDay);
             
             
             var oyyyy = checkout.substr(6,4);
             var omm = checkout.substr(0,2);
			 var odd = checkout.substr(3,2);
			 var checkoutdate = oyyyy+omm+odd;

			 var a =1;
			 
			 
			 //1달 차이 날때
			 if(omm-imm == 1){
				var lastDate = new Date(iyyyy, imm, 0).getDate();
				var checkingap = lastDate - idd;
				var plus = checkingap + Number(odd);
				 for(var i = idd; i < idd+plus; i++ ){
					 a *= pricemag[new Date(iyyyy,imm,i).getDay()];
				 }
			 }else{
			 // 배율 계산
			 for(var i = idd; i < odd; i++ ){
				 a *= pricemag[new Date(iyyyy,imm,i).getDay()];
			 }
             console.log(a);
             
			 }
			 
			 
			 
			// 체크아웃 요일
			 var checkoutDay = weeks[new Date(oyyyy,omm,odd).getDay()];
			 console.log(checkoutDay);
             
			 
			 if(checkin == '' && checkout == ''){
				 alert("날짜를 먼저 선택하세요");
			 	return;
			 }else{
				 if(today - checkindate > 0){
					alert("오늘 보다 이전날짜에 체크인 할 수 없습니다.")
				 }else{
				 if(iyyyy != oyyyy){
					 alert("해당 년도 내에서만 예약 가능합니다");
					 return;
				 }else{
					 if(imm - omm > 0){
						alert("이전달 예약은 불가능합니다");
						return;
					 }else{
						 if(idd - odd >= 0){
							alert("이전일 예약은 불가능 합니다");
							return;
						 }else{
						 		
							$.ajax({
								type:"GET",
								url :"gethotelPrice",
								data:{
									hno : hno,
									a : a,
									omm :omm,
									odd :odd,
									imm :imm,
									idd :idd
								},
								success:function(data){
									console.log(data);
								}
							}); 
							 }
							 
						 }
						 
					 }
				}
			}      
	             
             
             
             
             
        });
        
       
        
        
    </script>


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
    

  </div>
  <!-- /.container -->

   <!-- Footer -->
   <%@ include file="../../../common/footer.jsp" %>
   
 
 
 	
</body>

</html>
