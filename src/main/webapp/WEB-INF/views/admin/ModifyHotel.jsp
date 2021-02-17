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
  


    <h1 class="mt-4 mb-3">호텔 수정 페이지
    </h1>
    
      <div>
  	
  </div>
 
  
 <!--    	
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
      </div> -->
   
				
       <br/>
 
   		 
        <div class="card mb-4">
     	 <form action="hotelUpdate" method="post" id="hotelUpdate">
     	 <h5 class="card-header">호텔 상세정보 입력 &nbsp;&nbsp;
          	 <input type="button" value="정보 수정  완료" id="hotelUpdateBtn" class="btn btn-warning">
          	
          	</h5>
          	
			<table>
			<tr>
				<td>
					<div id="hidden">
					</div>
					<input type="hidden" name="hno" value="${hotel.hno}" autocomplete="off">
				</td>
			</tr>
			<tr>
				<td class="a">
	 				호텔 명  
				</td>
				<td>
					<input type="text" name="hname" id="hname" value="${hotel.hname}" required autocomplete="off"/>
				</td>
			</tr>
			<tr>
				<td class="a">
					호텔 소개
				</td>
				<td>
	 				<textarea name="hinfo" id="hinfo" required autocomplete="off">${hotel.hinfo}</textarea>
	 			</td>
			</tr>
			<tr>
				<td class="a">
					호텔 주소
				</td>
				<td>
	 				 <input type="text" name="haddress" id="haddress" value="${hotel.haddress}" required autocomplete="off"/>
				</td>
			</tr>
			<tr>
				<td class="a">
					호텔 전화번호
				</td>
				<td>
	 				<input type="text" name="htel" id="htel" value="${hotel.htel}" required autocomplete="off"/>
				</td>
			</tr>
			<tr>
				<td class="a">
					호텔 이메일
				</td>
				<td>
	 				 <input type="email" name="hemail" placeholder="hotel@hotel.com" required autocomplete="off"/>
				</td>
			</tr>
			<tr>
				<td class="a">
					호텔 체크인
				</td>
				<td>
					 <input type="text" name="hcheckin" id="hcheckin" value="${hotel.hcheckin}" required autocomplete="off"/>
				</td>
				<td class="a">
					호텔 체크아웃
				</td>
				<td>
					 <input type="text" name="hcheckout" id="hcheckout" value="${hotel.hcheckout}" required autocomplete="off"/>
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
				<td class="a" >
					구글 맵 주소
				</td>
				<td>
	 				<input type="text" name="hgooglemap" value="${hotel.hgooglemap}" required width="5" autocomplete="off"/>
				</td>
			</tr>
			<tr>
				<td class="a">
					호텔 등급
				</td>
				<td> 
	 				 <input type="text" name="hgrade" id="hgrade" value="${hotel.hgrade}" autocomplete="off" required width="5"/>
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
	 				<input type="text" name="hprimaryprice" value="${hotel.hprimaryprice}" required width="5"/>원
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
					<td class="a">
					 메인 이미지 : 
					</td>
					<td>
						<div id="hotelMainImg">
							<input type="text" value="${hotel.hmainimg}" style="width: 300px;" disabled>
						</div>
					</td>
					<td>
						<input id="mainChangeBtn" type="button" value="메인이미지 변경 하기 ">
					</td>
					<td>
						<input id="ChangeCancelBtn" type="button" value="취소">
					</td>
				</tr>
			</table>
		</form>
  	</div>
			<!-- 메인 이미지 -->
		<div class="card mb-4">
          <h5 class="card-header">현재 등록된 메인 이미지 </h5>
          <div class="card-body">
            <div class="input-group" id="changedImage">
              <img src="${pageContext.request.contextPath}/resources/img/jejuhotel/upload${hotel.hmainimg}"/>
            </div>
          </div>
        </div>
  
			<!-- 상세 이미지 -->
		<div class="card mb-4">
          <h5 class="card-header">상세 이미지 수정하기</h5> 
          <div class="card-body">
            <div class="input-group">
         		 
            	<div id="detailFileList">  
            		<c:choose>
            			<c:when test="${not empty DetailImg}">
            				<c:forEach items="${DetailImg}" var="img">
            					<img src="${pageContext.request.contextPath}/resources/img/jejuhotel/upload${img.hdeimg}"/>
            				</c:forEach>
            			</c:when>
            		</c:choose>
            	</div>
            </div>
          </div>
        </div>
   
   


    </div>
    
    
    
   	<!-- Footer -->
   	<%@ include file="../common/footer.jsp" %>
   	<script src="http://code.jquery.com/jquery-latest.min.js"></script>

	<script>
			//수정완료 버튼 눌렸을때
			$("#hotelUpdateBtn").click(function(){
				
				$("#hotelUpdate").submit();
				
			});
			
			//이미지 수정 버튼 눌렸을때 -> input type file로 변경해서 새 파일 받게하기
			$("#mainChangeBtn").click(function(){
				var str = "<input type='file' id='mainfilechange'>";
				
				$("#hotelMainImg").html(str);
				
			});//이미지 수정 취소 버튼 눌렸을때
			$("#ChangeCancelBtn").click(function(){
				var str = "<input type='text' value='${hotel.hmainimg}' style='width: 300px;' disabled>"
				$("#hotelMainImg").html(str);
			});
			
				//이미지 정보 새로 변경시
			$("#hotelMainImg").on("change","input",function(){
				var files = this.files;
				var hno = '${hotel.hno}';
				console.log(hno);
				console.log(files);
				var formData = new FormData(); //태그 형태의 폼태그 
				formData.append("file",files[0]);//name값으로 value넣음
				console.log(formData);		
				
				$.ajax({
					type:"POST",
					url:"mainImgChange/"+hno,
					contentType:false,
					processData:false,
					dataType: "text",
					data:formData,
					success:function(data){
						console.log(data);
						var img = data;
						var html = "";
						html += "<img src='${pageContext.request.contextPath}/resources/img/jejuhotel/upload"+img+"'/> ";
						$("#changedImage").html(html);
						
						console.log(img);
						var str = "<input type='hidden' value='"+img+"' name='hmainimg'>";
						$("#hidden").html(str);
						
						
					}
					
					
				});
				
				
			});
			
		
	
	</script>

</body>

</html>
	