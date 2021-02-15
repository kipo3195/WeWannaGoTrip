<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

 <!-- Head -->
 <%@ include file="../common/header.jsp" %>
 
<style>
	.Temp{
		width:100%;
		height:150px;
		border:1px solid gray;
		background-color:infobackground;
		margin:auto;
	}
	.Temp span{
		padding:50px;
	}
	table{
		padding:20px;
	}
</style>

<body>

  <!-- Navigation -->
  <%@ include file="../common/navigation.jsp" %>
   
  <!-- Page Content -->
  <div class="container">

    <h1 class="mt-4 mb-3">호텔 등록 페이지
    </h1>
    	
      <div class="row" id="hotelMainPreview">
		      	
      			<div class="Temp">
					<span>미리보기 시 이곳에 메인 화면 정보가 노출됩니다.</span>
				</div>	
      </div>
      <br/>
      
       <div class="row" id="hotelDetailPreview">
      		 <div class="Temp">
					<span>미리보기 시 이곳에 상세 화면 정보가 노출됩니다.</span>
			</div>
      </div>
       <br/>
 
   		 
        <div class="card mb-4">
     	 <form action="hotelReg" method="post">
     	 <h5 class="card-header">호텔 상세정보 입력 &nbsp;&nbsp;
     		 <input type="button" value="미리보기" id="previewBtn">
          	&nbsp;
          	 <input type="submit" value="호텔 등록하기" id="hotelRegSubmit">
          	
          	</h5>
          	
			<table>
			<tr>
				<td>
	 				호텔 명 : <input type="text" name="hname" id="hname" required/>
				</td>
			</tr>
			<tr>
				<td>
	 				호텔 소개 : <textarea name="hinfo" id="hinfo" required></textarea>
	 			</td>
			</tr>
			<tr>
				<td>
	 				호텔 주소 : <input type="text" name="haddress" required/>
				</td>
			</tr>
			<tr>
				<td>
	 				호텔 전화번호 : <input type="text" name="htel" placeholder="012-345-5678" required/>
	 			
				</td>
			</tr>
			<tr>
				<td>
	 				호텔 이메일 : <input type="email" name="hemail" placeholder="hotel@hotel.com" required/>
				</td>
			</tr>
			<tr>
				<td>
					호텔 체크인 : <input type="text" name="hcheckin" id="hcheckin" required/>
				</td>
				<td>
					호텔 체크아웃 : <input type="text" name="hcheckout" id="hcheckout" required/>
	 			<!-- 	호텔 체크아웃 : 
	 				<select id="hopentoclose" name="hotelchekout">
	 					<option>11 : 00</option>				
		 				<option>12 : 00</option>		
	 				</select>
	 				체크 인 
	 				<select id="#" name="hotelcheckin">
	 					<option>14 : 00</option>				
		 				<option>15 : 00</option>		
	 				</select> -->
				</td>
			</tr>
			<tr>
				<td>
	 				구글 맵 주소 : <input type="text" name="hgooglemap" required width="5"/>
				</td>
			</tr>
			<tr>
				<td>
	 				호텔 등급 : 
	 				 <input type="text" name="hgrade" id="hgrade" required width="5"/>
	 				<!-- <select id="hgrade">
	 					<option>6성급</option>				
		 				<option>5성급</option>				
		 				<option>4성급</option>				
		 				<option>3성급</option>	
	 				</select> -->
				</td>
			</tr>
			<tr>
				<td>
	 				호텔 기본 가격  : <input type="text" name="hprimaryprice" required width="5"/>원
				</td>
			</tr>
			<tr>	
				<td>
					주요시설
				</td>	
				<td>
				<div>
				놀이 시설
	 			<select id="func1">
	 					<option>수영장</option>				
		 				<option>오락시설</option>				
		 				<option>노래방</option>				
		 				<option>카지노</option>	
	 				</select>
	 			</div>
	 			<div>
				라운지 & 식사
	 			<select id="func2">
	 					<option>조식가능</option>				
		 				<option>레스토랑</option>				
		 				<option>바  & 펍</option>				
		 				<option>무료라운지</option>	
	 				</select>
	 			</div>	
				<div>
				서비스
	 			<select id="func3">
	 					<option>연박할인</option>				
		 				<option>공항셔틀</option>				
		 				<option>lundery</option>				
		 				<option>룸서비스</option>	
	 				</select>
				</div>
					<div id="func44">
				주요 기능 4
	 			<select id="func4" name="func4" onchange="changeSelect()">
	 					<option>수영장</option>				
		 				<option>노래방</option>				
		 				<option>카지노</option>	
		 				<option value="enter">직접입력</option>				
	 				</select>
	 				</div>
				</td>
			</tr>
			<tr>
				<td>
			<div id="MainImgName">
              </div>
				</td>
			</tr>
		
			
			</table>
			</form>
  	</div>
			<!-- 메인 이미지 -->
		<div class="card mb-4">
          <h5 class="card-header">메인 이미지 등록하기</h5>
          <div class="card-body">
            <div class="input-group">
              <input type="file" class="form-control" placeholder="메인 이미지를 등록하세요" id="mainImage">
              <span class="input-group-append">
              </span>
            
            </div>
          </div>
        </div>
    
  
  
			<!-- 상세 이미지 -->
		<div class="card mb-4">
          <h5 class="card-header">상세 이미지 등록하기</h5>
          <div class="card-body">
            <div class="input-group">
              <input type="file" id="detailImages" class="form-control" accept="image/*">
              <span class="input-group-append">
              </span>
            </div>
          </div>
        </div>
   
   


    </div>
    
    
    
    
   	<!-- Footer -->
   	<%@ include file="../common/footer.jsp" %>
   	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
	
		
		//셀렉트 값 가져와서 직접입력 선택시 속성 변경가능
		function changeSelect(){
			var select = document.getElementById("func4");
			console.log(select);
			
			var selectValue = select.options[select.selectedIndex].value;
			console.log(selectValue);

			if(selectValue == 'enter'){
				var str = "<input type='text' name='func4'/>";
				str += "<input type='button' name='regist' id='regist' value='등록'/>"
				$("#func44").html(str);
			}
		}
			
			
			$("#previewBtn").click(function(){
				
				preMain();
				//미리보기 - 상세 호출
			});
			
			
			//미리보기 - 메인 
			function preMain() {
				var str = "";
				
				var hname = $("#hname").val();
				console.log(hname);
	 			var hinfo = $("#hinfo").val();
	 			var hgrade = $("#hgrade").val();
	 			console.log(hgrade);
	 			var hprice = $("#hprice").val();
				var hmainimg = $("#hmainimg").val();
				var hcheckin = $("#hcheckin").val();
				var hcheckout = $("#hcheckout").val();
				
			
				let date = new Date();
				fmtdate = getFormatDate(date);
				
				str += " <div class='col-md-7' style='padding:15px;'> ";
				str += " <a href='#'> ";
		        str += " <img class='img-fluid rounded mb-3 mb-md-0'"
		        str += " src='${pageContext.request.contextPath}/resources/img/jejuhotel/upload"+hmainimg+"' alt=''> ";
		        str += " </a> "; 
		        str += " </div> ";
		        str += " <div class='col-md-5'> ";
		        str += " <h3>"+hname+"</h3> ";
		        str += " <p>"+hinfo+"<br/>";
		        str += " <p>"+hprice+"원<br/>";
		        str += " 체크인:"+hcheckin+" 체크아웃 : "+hcheckout+" <br>"
		        str += " 호텔 등급:"+hgrade+" <br>";
		        str += " 평균 평점 : 0 <br/>";
		        str += " <img src='${pageContext.request.contextPath}/resources/img/etc/like.png'/>좋아요 수<br/> "; 
		    	str += " 호텔 등록일자 : "+fmtdate+"<br/></p>"
		        str += " </a>";
		        str += " </div> ";
			$("#hotelMainPreview").html(str);
			
			}
			
		$("#mainImage").on("change",function(){
			var files = this.files;
			console.log(files);
			var formData = new FormData(); //이게뭘까?
			formData.append("file",files[0]);//name값으로 value넣음
			console.log(formData);		
			
			$.ajax({
				type:"POST",
				url :"mainImgUpload",
				contentType : false,
				processData : false,
			 	dataType : "text",
				data : formData,
				success : function(data){
			 		console.log(data);
			 	/* 	$(".mainImage").attr("src","${pageContext.request.contextPath}/img/jejuhotel/upload"+data); */
					var str = "<input type='hidden' name='hmainimg' id= 'hmainimg' value='"+data+"'>";
					$("#MainImgName").html(str);
					
					
			 	}
				
				
			});
			
		});	
	
			
		//detailimages
		
	
		
		function getFormatDate(date){
	    var year = date.getFullYear();              //yyyy
	    var month = (1 + date.getMonth());          //M
	    month = month >= 10 ? month : '0' + month;  //month 두자리로 저장
	    var day = date.getDate();                   //d
	    day = day >= 10 ? day : '0' + day;          //day 두자리로 저장
	    return  year + '-' + month + '-' + day;       //'-' 추가하여 yyyy-mm-dd 형태 생성 가능
	}
	
	
	</script>

</body>

</html>
	