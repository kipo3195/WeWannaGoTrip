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
   
	<br/>
    <hr/>
	<br/>
    <!-- Content Row -->
    <div class="row">
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h3 class="card-header">Luxury</h3>
          <div class="card-body">
            <div class="display-4" id="luxuryprice">금액 표시</div>
            <div class="font-italic" id="lu">per day</div>
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item" id="luxlestRoom">잔여 객실</li>
            <li class="list-group-item">조식 포함&nbsp;<input type="checkbox">&nbsp;+ 추가 금액(원) </li>
            <li class="list-group-item">부가기능 추가 가능</li>
            <li class="list-group-item" id="cencelLux">
              <a href="${pageContext.request.contextPath}/credit?hno=${hotel.hno}" id="luxBtn" class="btn btn-primary">예약하기</a>
            </li>
          </ul>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card card-outline-primary h-100">
          <h3 class="card-header bg-primary text-white">Delux</h3>
          <div class="card-body">
          <div class="display-4" id="deluxprice">금액 표시</div>
            <div class="font-italic" id="de">per day</div>
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item" id="dellestRoom">잔여 객실
            <div id="deluxRoom">
            
            </div>
            </li>
            <li class="list-group-item">조식 포함&nbsp;<input type="checkbox">&nbsp;+ 추가 금액(원) </li>
            <li class="list-group-item">부가기능 추가 가능</li>
            <li class="list-group-item">
              <a href="${pageContext.request.contextPath}/credit?hno=${hotel.hno}"  id="cenceldel" class="btn btn-primary">Sign Up!</a>
            </li>
          </ul>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h3 class="card-header">Double</h3>
          <div class="card-body">
          <div class="display-4" id="doublerprice">금액 표시</div>
            <div class="font-italic" id="dou">per day</div>
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item" id="doulestRoom">잔여 객실</li>
            <li class="list-group-item">조식 포함&nbsp;<input type="checkbox">&nbsp;+ 추가 금액(원) </li>
            <li class="list-group-item">부가기능 추가 가능</li>
            <li class="list-group-item">
              <a href="${pageContext.request.contextPath}/credit?hno=${hotel.hno}" id="cenceldou" class="btn btn-primary">Sign Up!</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
         <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h3 class="card-header">Business</h3>
          <div class="card-body">
          <div class="display-4" id="businessprice">금액 표시</div>
            <div class="font-italic" id="bu">per day</div>
          </div>
          <ul class="list-group list-group-flush">
            <li class="list-group-item" id="busiRoom">잔여 객실</li>
            <li class="list-group-item">조식 포함&nbsp;<input type="checkbox">&nbsp;+ 추가 금액(원) </li>
            <li class="list-group-item">부가기능 추가 가능</li>
            <li class="list-group-item">
              <a href="${pageContext.request.contextPath}/credit?hno=${hotel.hno}" class="btn btn-primary" id="cencelbusi">Sign Up!</a>
            </li>
          </ul>
        </div>
      </div>
    
    
    <!-- /.row -->
    <!-- bootstrap -->
    

  </div>
  <!-- /.container -->
  
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
        	
   		     //체크인
             var iyyyy = checkin.substr(6,4);
			 var imm = checkin.substr(0,2);
			 var idd = checkin.substr(3,2);
			 var checkindate = iyyyy+imm+idd; //오늘날짜와 비교하기 위한 값
			 
			 //체크인 요일
             var checkinDay = weeks[new Date(iyyyy,imm,idd).getDay()];
             console.log(checkinDay);
             
             //체크아웃
             var oyyyy = checkout.substr(6,4);
             var omm = checkout.substr(0,2);
			 var odd = checkout.substr(3,2);
			 var checkoutdate = oyyyy+omm+odd;

			 var a =1;
			 
			 //2개월 단위 이상 예약 불가
			 if(month - imm < -2 || month - omm < -2){
				 alert("최대 2개월 이후까지만 예약 가능합니다");
				 return;
			 }
			 if(omm-imm ==2 ){
				 alert("서비스 준비중입니다");
				 return;
			 }
			 //1달 차이 날때 체크
			 if(omm-imm == 1){
				var lastDate = new Date(iyyyy, imm, 0).getDate();
				var checkingap = lastDate - idd;
				var plus = checkingap + Number(odd);
				  for(var i = 0; i < plus; i++ ){
					 a *= pricemag[new Date(iyyyy,imm,i).getDay()];
				 } 
				var odda = 1; //한달차이 구분 플레이그
				
			 }else{
			 // 배율 계산
			 for(var i = idd; i < odd; i++ ){
				 a *= pricemag[new Date(iyyyy,imm,i).getDay()];
				 a = a.toFixed(1);
			 }
             console.log(a);
             plus = odd-idd;
			 }
			 
			
			 
			// 체크아웃 요일
			 var checkoutDay = weeks[new Date(oyyyy,omm,odd).getDay()];
			 console.log(checkoutDay);
             
			 
			 if(checkin == '' || checkout == ''){
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
						 
						 if(idd - odd >= 0 && odda == null){
							 alert("이전일 예약은 불가능 합니다");
							return;
							
						 }else{
						 		
							$.ajax({
								type:"GET",
								url :"gethotelPrice",
								data:{
									hno : hno,
									a : a,
									plus:plus
								},
								success:function(data){
									console.log(data);
									
									var luxury = data.luxury;
									var delux = data.delux;
									var business = data.business;
									var doubler = data.doubler;
									
									var plus = data.plus; //나눌 기간
									
									var lu = priceCal(luxury);
									var de = priceCal(delux);
									var bu = priceCal(business);
									var dou = priceCal(doubler);
									
									function priceCal(price){
										
										return(Math.ceil(price/plus));
									}
									
									
									var luxurystr = "<span>"+luxury+"원</span>";
									$("#luxuryprice").html(luxurystr);
									var lustr = "<span>"+lu+"원 per day "+plus+"박 "+(plus+1)+"일</span>";
									$("#lu").html(lustr);
									
									var deluxstr = "<span>"+delux+"원</span>";
									$("#deluxprice").html(deluxstr);
									var destr = "<span>"+de+"원 per day "+plus+"박 "+(plus+1)+"일</span>";
									$("#de").html(destr);
									
									var businessstr = "<span>"+business+"원</span>";
									$("#businessprice").html(businessstr);
									var bustr = "<span>"+bu+"원 per day "+plus+"박 "+(plus+1)+"일</span>";
									$("#bu").html(bustr);
									
									var doublerstr = "<span>"+doubler+"원</span>";
									$("#doublerprice").html(doublerstr);
									var doustr = "<span>"+dou+"원 per day "+plus+"박 "+(plus+1)+"일</span>";
									$("#dou").html(doustr);
								
									
								}
								}); 
							
							
								 $.ajax({
									type:"get",
									url :"getBookableRoom",
									data : {
										hno :hno,
										iyyyy:iyyyy,
										imm :imm,
										idd :idd,
										oyyyy:oyyyy,
										omm : omm,
										odd : odd,
										plus : plus
									},
									success:function(data){
										console.log(data);
									var defaultcount = 3; 
									var lux = data.lux;
									var dou = data.dou;
									var de = data.de;
									var busi = data.busi;
									var date = data.date;
									var plus = data.plus;
									var str = "";
									var html = "";
									
									
									//luxury
									var cencelLux = $("#cencelLux");
									var luxlestRoom = $("#luxlestRoom");
									//delux
									var dellestRoom = $("#dellestRoom");
									var cenceldel = $("#cenceldel");
									//double
									var doulestRoom = $("#doulestRoom");
									var cenceldou = $("#cenceldou");
									//business
									var busiRoom = $("#busiRoom");
									var cencelbusi = $("cencelbusi");

									lestroomCal(lux,defaultcount,date,cencelLux,luxlestRoom);
									lestroomCal(de,defaultcount,date,cenceldel,dellestRoom);
									lestroomCal(dou,defaultcount,date,cenceldou,doulestRoom);
									lestroomCal(busi,defaultcount,date,cencelbusi,busiRoom);
									
									
									function lestroomCal(map, defaultcount, date,div,divA){
										for(var i =0; i<map.length; i++){
											if(defaultcount-map[i] == 0){
												alert('예약불가능한 날짜가 존재합니다');
											str ="<li style='list-style:none; color:red'>"+ date[i]+" : "+(defaultcount-map[i])+"</li>";
											html = "<label>예약이 불가능합니다</label>";
											
											$(div).html(html);
											
											}else{
											str ="<li style='list-style:none;'>"+ date[i]+" : "+(defaultcount-map[i])+"</li>";
											}
											$(divA).append(str);
										}
									}
									
									/* for(var i =0; i<lux.length; i++){
										if(defaultcount-lux[i] == 0){
											alert('예약불가능한 날짜가 존재합니다');
										str ="<li style='list-style:none; color:red'>"+ date[i]+" : "+(defaultcount-lux[i])+"</li>";
										html = "<label>예약이 불가능합니다</label>";
										
										$("#cencelLux").html(html);
										
										}else{
										str ="<li style='list-style:none;'>"+ date[i]+" : "+(defaultcount-lux[i])+"</li>";
										}
									
										$("#luxlestRoom").append(str);
									} */
									
									
									
									
									
									
									
									
									}
								 });
							 }
							 
						 }
						 
					 }
				}
			}      
             
        });
        
    </script>

   <!-- Footer -->
   <%@ include file="../../../common/footer.jsp" %>
   
 
 
 
 	
</body>

</html>
