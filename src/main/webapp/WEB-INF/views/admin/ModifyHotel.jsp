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
            </div>
          </div>
        </div>
   
   


    </div>
    
    
    
   	<!-- Footer -->
   	<%@ include file="../common/footer.jsp" %>
   	<script src="http://code.jquery.com/jquery-latest.min.js"></script>


</body>

</html>
	