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
		line-height:150px;
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
	#detailFileList{
		width:100%;
		height:220px;
		border:1px solid gray;
		background-color:skyblue;
		margin:auto;
		align-content: center;
	}
	#detailFileList li{
		float:left;
		padding:5px;
		list-style: none;
	}
	
	#hotelReg{
		text-align: center;
		height:900px;
	}
		
	     table {
           margin: auto;
           padding: 30px;  
          }
          table td{
           padding:10px;
          }
       .a {
            text-align: right;
            padding: 12px;        
          }
        
        div{ 
          text-align: center;
         }
          
         #b{
         /* margin-top : 10px; */
         list-style: none;
         text-align : left;
        
         }
         
         #b:first-child{
         	margin-top : 20px;
         }
       #info{
       border:1px solid gray;
       }  
	
	
</style>

<body>

  <!-- Navigation -->
  <%@ include file="../common/navigation.jsp" %>
   
  <!-- Page Content -->
  <div class="container">
  


    <h1 class="mt-4 mb-3">호텔 수정 & 삭제 페이지
    </h1>
    
      <div>
  	
  </div>
    <div class="card mb-4">
          <h5 class="card-header">
          	검색 조회 &nbsp;
  			카테고리&nbsp;<select id="category" name="#">
	 					<option> 호텔</option>				
		 				<option> 카페&식당</option>		
		 				<option> 관광지 </option>		
	 				</select>
	 			 &nbsp;
	 		검색 옵션&nbsp;<select id="SearchOption" name="#">
	 					<option> 이름 </option>			
	 					<option> 기타 </option>			
	 					<option> 기타 </option>			
	 				</select>
  	
  			</h5>
          <div class="card-body">
            <div class="input-group">
              <input type="text" class="form-control" placeholder="Search for..." id="searchKeyword" name="searchKeyword">
              <span class="input-group-append">
                <button class="btn btn-secondary" type="button" id="searchBtn">검색</button>
              </span>
              
            </div>
				<div id="SearchedList">
              	 검색 버튼 클릭시 이곳에 호텔 정보가 노출됩니다.
              </div>	
          </div>
        </div>
  
    	
      <div class="row" id="hotelMainPreview">
		      	
      			<div class="Temp">
					<span>미리보기 시 이곳에 메인 화면 정보가 노출됩니다.</span>
				</div>	
      </div>
      <br/>
      <hr/>
       <div class="row" id="hotelDetailPreview">
      		 <div class="Temp">
					<span>미리보기 시 이곳에 상세 화면 정보가 노출됩니다.</span>
			</div>
      </div>
   
				
       <br/>
 
   		 
        <div class="card mb-4">
     	 <form action="hotelUpdate" method="post" id="hotelReg">
     	 <h5 class="card-header">호텔 상세정보 입력 &nbsp;&nbsp;
     		 <input type="button" value="미리보기" id="previewBtn">
          	&nbsp;
          	 <input type="button" value="정보 수정 " id="hotelUpdateBtn">
          	
          	</h5>
          	
			<table>
			<tr>
				<td class="a">
	 				호텔 명  
				</td>
				<td>
					<input type="text" name="hname" id="hname" required/>
				</td>
			</tr>
			<tr>
				<td class="a">
					호텔 소개
				</td>
				<td>
	 				<textarea name="hinfo" id="hinfo" required></textarea>
	 			</td>
			</tr>
			<tr>
				<td class="a">
					호텔 주소
				</td>
				<td>
	 				 <input type="text" name="haddress" id="haddress" required/>
				</td>
			</tr>
			<tr>
				<td class="a">
					호텔 전화번호
				</td>
				<td>
	 				<input type="text" name="htel" id="htel" placeholder="012-345-5678" required/>
				</td>
			</tr>
			<tr>
				<td class="a">
					호텔 이메일
				</td>
				<td>
	 				 <input type="email" name="hemail" placeholder="hotel@hotel.com" required/>
				</td>
			</tr>
			<tr>
				<td class="a">
					호텔 체크인
				</td>
				<td>
					 <input type="text" name="hcheckin" id="hcheckin" required/>
				</td>
				<td class="a">
					호텔 체크아웃
				</td>
				<td>
					 <input type="text" name="hcheckout" id="hcheckout" required/>
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
				<td class="a">
					구글 맵 주소
				</td>
				<td>
	 				<input type="text" name="hgooglemap" required width="5"/>
				</td>
			</tr>
			<tr>
				<td class="a">
					호텔 등급
				</td>
				<td> 
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
				<td class="a">
					호텔 기본 가격
				</td>
				<td>
	 				<input type="text" name="hprimaryprice" required width="5"/>원
				</td>
			</tr>
			<tr>	
				<td class="a">
					주요시설
				</td>	
				<td>
					<div style="padding:5px; margin-top:5px;">
						놀이 시설
					</div>
					<div>
	 					<select id="func1">
	 						<option>수영장</option>				
		 					<option>오락시설</option>				
		 					<option>노래방</option>				
		 					<option>카지노</option>	
	 					</select>
	 				</div>
	 				<div style="margin-top:36px;">
						라운지 & 식사
					</div>
					<div>
	 					<select id="func2">
	 						<option>조식가능</option>				
		 					<option>레스토랑</option>				
		 					<option>바  & 펍</option>				
		 					<option>무료라운지</option>	
	 					</select>
	 				</div>	
				</td>
				<td>
					<div style="padding:5px; margin-top:5px;">
						서비스
					</div>
					<div>
	 					<select id="func3">
	 						<option>연박할인</option>				
		 					<option>공항셔틀</option>				
		 					<option>lundery</option>				
		 					<option>룸서비스</option>	
	 					</select>
					</div>
					<div id="func44" style="margin-top:36px;">
						주요 기능 4
					</div>
					<div >	
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
			<tr>
				<td>
			<div class="detailFileList">
			
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
              <input type="file" class="form-control" placeholder="메인 이미지를 등록하세요" id="mainImage" >
              <span class="input-group-append">
              </span>
            
            </div>
          </div>
        </div>
    
  
  
			<!-- 상세 이미지 -->
		<div class="card mb-4">
          <h5 class="card-header">상세 이미지 등록하기(4개 까지 등록 가능)</h5>
          <div class="card-body">
            <div class="input-group">
         		 
            	<div id="detailFileList">  
            		  <span id="detailInfo">
            			 등록하실 파일을 여기에 등록하세요  (상세보기 페이지에는 4개의 이미지가 필요합니다.)
            		</span>
            	</div>
            	
             <!--  <input type="file" id="detailImages" class="form-control" accept="image/*">
              <span class="input-group-append">
              </span> -->
            </div>
          </div>
        </div>
   
   


    </div>
    
    
    
   	<!-- Footer -->
   	<%@ include file="../common/footer.jsp" %>
   	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
	
	var contextPath = "${pageContext.request.contextPath}";
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
				preDetail();
				
			});
			
			
			//미리보기 - 메인 
			function preMain() {
				var str = "";
				
				var hname = $("#hname").val();
	 			var hinfo = $("#hinfo").val();
	 			var hgrade = $("#hgrade").val();
	 			var hprice = $("#hprice").val();
	 			var hprimaryprice = $("#hprimaryprice").val();
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
		        str += " <p>"+hprimaryprice+"원<br/>";
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
			function preDetail(){
				
				var hname = $("#hname").val();
	 			var hinfo = $("#hinfo").val();
	 			var hgrade = $("#hgrade").val();
	 			var haddress = $("#haddress").val();
	 			var htel = $("#htel").val();
	 			var hprice = $("#hprice").val();
	 			var hprimaryprice = $("#hprimaryprice").val();
				var hcheckin = $("#hcheckin").val();
				var hcheckout = $("#hcheckout").val();
				
				
				var str = "";
				str += " <h1 class='mt-4 mb-3'>"+hname+"<small>"+haddress+"</small> </h1> ";
				str += " <div class='col-md-8'> ";
				str += " </div> ";
				str += " <div class='col-md-4'> ";
				str += " <h3 class='my-3'>"+hname+"</h3> ";
				str += " <p>"+hinfo+"</p> ";
				str += " <p>"+htel+"</p> ";
				str += " <p>체크인:"+hcheckin+" - 체크아웃"+hcheckout+" </p> ";
				str += " <img src='${pageContext.request.contextPath}/resources/img/etc/like.png'/>좋아요 수<br/> "; 
				str += " <p>"+hgrade+"</p> ";
				str += " <h3 class='my-3'>부대시설</h3> ";
				str += " <ul> ";
				str += " <li>사용 편의 시설 1</li>";
				str += " <li>사용 편의 시설 2</li>";
				str += " <li>사용 편의 시설 3</li>";
				str += " <li>사용 편의 시설 4</li>";
				str += " </ul> ";
				
				$("#hotelDetailPreview").html(str);

				
				
			}
		
			
			
		$("#mainImage").on("change",function(){
			var files = this.files;
			console.log(files);
			var formData = new FormData(); //태그 형태의 폼태그 
			formData.append("file",files[0]);//name값으로 value넣음
			console.log(formData);		
			
			$.ajax({
				type:"POST",
				url :"mainImgUpload", // 나중에 관광지할때 contextPath 활용 해볼것   
				contentType : false, //막아줘야 대용량 데이터를 전달 할 수있음
				processData : false,
			 	dataType : "text", 
				data : formData, //중괄호 열고 닫고 할 필요없음. 
				success : function(data){
			 		console.log(data);
			 	/* 	$(".mainImage").attr("src","${pageContext.request.contextPath}/img/jejuhotel/upload"+data); */
					var str = "<input type='hidden' name='hmainimg' id= 'hmainimg' value='"+data+"'>";
					$("#MainImgName").html(str);
					
			 	}
			});
		});	
	
		
		function getFormatDate(date){
	    var year = date.getFullYear();              //yyyy
	    var month = (1 + date.getMonth());          //M
	    month = month >= 10 ? month : '0' + month;  //month 두자리로 저장
	    var day = date.getDate();                   //d
	    day = day >= 10 ? day : '0' + day;          //day 두자리로 저장
	    return  year + '-' + month + '-' + day;       //'-' 추가하여 yyyy-mm-dd 형태 생성 가능
	}
		
		
		var maxImageCnt = 0;
		//detailimage 등록하기  기본이벤트 막아주기
		$("#detailFileList").on("dragEnter dragover",function(event){
			event.preventDefault();
		});
		$("#detailFileList").on("drop",function(event){
			event.preventDefault();
			
		var files = event.originalEvent.dataTransfer.files;
		console.log(files);
		
		var maxSize = 10485760;
		var formData = new FormData();
		
				
		for(var i =0; i<files.length; i++){
			if(files[i].size > maxSize){
				alert("등록할 수 없는 파일이 존재합니다");
				return;
			}else{
				if(maxImageCnt>=4){
					alert("최대 등록할 수 있는 이미지 갯수를 초과하였습니다.");
					return;
				}else{
				formData.append("files",files[i]);
				maxImageCnt += 1;
				console.log(maxImageCnt);
				}
			}
		};
			
			$.ajax({
				type : "POST",
				data : formData,
				dataType : "json",
				url : "DetailImgUpload",
				contentType: false,
				processData: false,
				success : function(data){
				
					for(var i=0; i<data.length; i++){
					var detailImage = getDetailImage(data[i]);
					console.log(detailImage);
					var html = "<li>";
					html+= "<img src='"+detailImage.imgSrc+"'/>"
					html+= "<div>";
					html+= "<a href='"+detailImage.getLink+"' target='_blank'>"+detailImage.fileName+"</a>";
					html+= "</div>";
					html+= "<div>";
					html+= "<a href='"+detailImage.fullName+"' class='delBtn'>닫기</a>";
					html+= "</div>";
					html+= "</li>";
					$("#detailInfo").remove();
					$("#detailFileList").append(html);
					var str = ""
					str += "<input type='hidden' name='file["+i+"]' value='"+detailImage.fullName+"' /> ";
					$(".detailFileList").append(str);
					
					}
					
				}
			});
		
		
		
		});
		
		function checkImageType(fileName){
			var pattern = /jpg|gif|png|jpeg/i;
			return fileName.match(pattern);
			//return fileName.indexOf("s_") > -1 ? true : false;
		}
		
		function getDetailImage(fullName){
			console.log(fullName);
			var imgSrc, fileName, getLink;
			
			if(checkImageType(fullName)){
				// 이미지 파일
				imgSrc = contextPath+"/resources/img/jejuhotel/upload"+fullName;
				console.log(imgSrc);
				getLink = contextPath+"/resources/img/jejuhotel/upload"+fullName.replace("s_","");
			}else{
				// 일반 파일
				alert("등록 할 수 없는 파일의 형태 입니다.");
				return;
				/* imgSrc = contextPath+"/resources/img/file.png";
				getLink = contextPath+"/resources/img/jejuhotel/upload/upload"+fullName; */
			}
			
			fileName = fullName.substr(fullName.lastIndexOf("_")+1);
			
			return {
					fileName : fileName,
					imgSrc : imgSrc, 
					fullName : fullName, 
					getLink : getLink
				   };
			
		}
			
			//호텔 수정시
			$("#hotelUpdateBtn").click(function(){
			
			var str = "";
			var ViewDetail = $(".detailFileList .delBtn");
			
			$(ViewDetail).each(function(index){
				var fullName = $(this).attr("href");
				console.log(fullName);
				/* str += "<input type='hidden' name='file["+index+"]' value='"+fullName+"' /> "; */
			});
			
			/* $("#hotelUpdate").append(str); */
			/* $("#hotelUpdate").submit(); */
 	});
		
		
			
			
			//검색//
			
			$("#searchBtn").click(function(){
				var keyword = $("#searchKeyword").val();
				var category = $("#category option:selected").val();
				var SearchOption = $("#SearchOption option:selected").val();

				console.log(keyword);
				console.log(category);
				console.log(SearchOption);
				
				$.ajax({
					type:"get",
					url:"SearchInfo",
					data:{
						keyword :keyword,
						category:category,
						SearchOption:SearchOption
					},
					dataType:"json",
					success : function(data){
						console.log(data);
						var str = "";
					/* 	var str = " <table id='info'> ";
							str +=" <tr><td>호텔이름</td><td>호텔 주소</td><td><호텔전화번호></td></tr> "
							str +=" </table>"; */
						$(data).each(function() {
							var hno = this.hno;
							var hname = this.hname;
							var haddress = this.haddress;
							var htel = this.htel;
							console.log(hname);
							str += "<li id='b'><a id='atag' href='"+hno+"'>'"+hno+"' ";
							str += " '"+hname+"' ";
							str += " '"+haddress+"' ";
							str += " '"+htel+"'</a></li> ";
							str += "<br>";
							
							$("#SearchedList").html(str);
						});
						
					}
					
				});
			
			});
			
			//리스트 내 호텔 검색 결과 선택시
			$("#SearchedList").on("click","li a",function(){
				event.preventDefault();
				var hno = $(this).attr("href");
				console.log(hno);
				
				
				
			});
			
		
	
	
	</script>

</body>

</html>
	