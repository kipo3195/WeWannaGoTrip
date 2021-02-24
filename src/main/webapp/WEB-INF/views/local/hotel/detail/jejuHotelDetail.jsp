<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<style>
#modDiv{
		display:none;
	}
</style>
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
      <small>${hotel.haddress}</small>
    </h1>

   <!--  <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="index.html">Home</a>
      </li>
      <li class="breadcrumb-item active">Portfolio Item</li>
    </ol> -->

    <!-- Portfolio Item Row -->
    <div class="row">

      <div class="col-md-8">
 		<iframe src="${hotel.hgooglemap}" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
      </div>

      <div class="col-md-4">
      	
        <h3 class="my-3">${hotel.hname}</h3>
        <p>${hotel.hinfo}</p>
        <p>${hotel.htel}</p>
        <p>체크인 ${hotel.hcheckin} - 체크아웃 ${hotel.hcheckout}</p>
        <p><img src="${pageContext.request.contextPath}/resources/img/etc/like.png"/> ${hotel.hlikecnt}</p>
        <p>${hotel.hgrade}</p>
        <h3 class="my-3">부대시설</h3>
        <ul>
          <li style="list-style: none;">${hotel.func1}</li>
          <li style="list-style: none;">${hotel.func2}</li>
          <li style="list-style: none;">${hotel.func3}</li>
          <li style="list-style: none;">${hotel.func4}</li>
        </ul>
        <!-- 세션 정보(관리자, 이용자)에 따른  -->
        
          <input type="hidden" value="${memberInfo.mname}" id="mname"/>
		<c:choose>
			<c:when test="${ not empty memberInfo}">
			  <a href="${pageContext.request.contextPath}/local/jejuHotel/reservation?hno=${hotel.hno}" class="btn btn-primary">예약하러가기</a>
            <form>
            	<table>
					<tr>
						<td><input type="hidden" value="${hotel.hno}" name="hno" id="hno" ></td>
						<td><input type="hidden" value="${memberInfo.mno}" name="mno" id="mno"></td>
						<td><input type="button" class="btn btn-secondary" value="관심등록" id="intBtn"></td>
					</tr>            	
            	</table>
            </form>
            </c:when>
            <c:when test="${ not empty admin}">
            <a href="${pageContext.request.contextPath}/admin/HotelModify?hno=${hotel.hno}" class="btn btn-warning">수정</a>
            <a href="#" id="deleteHotel" class="btn btn-danger">삭제</a>  		
            <form id="deleteHotelSubmit" method="get" action="${pageContext.request.contextPath}/admin/deleteHotelSubmit">
            	<table>
            		<tr>
            			<td>
				            <div id="confirmCheck">
				            		
				            </div>
		         	  </td>
		         	  <td>
		         	  	<input type="hidden" value="${hotel.hno}" name="hno" id="hno">
		         	  </td>
		            </tr>
	            </table>
            </form>	
            </c:when>
            <c:otherwise>
            	  <a href="${pageContext.request.contextPath}/local/jejuHotel/reservation?hno=${hotel.hno}" class="btn btn-primary">예약하러가기</a>
            </c:otherwise>
          </c:choose>		
      </div>

	
    </div>
    <!-- /.row -->



    <!-- Related Projects Row -->

    <div class="row">
    
    <c:choose>
    	<c:when test="${not empty list}">
    		<c:forEach var="n" items="${list}">
					<img alt="" src="${pageContext.request.contextPath}/resources/img/jejuhotel/upload${n}">   				
    		</c:forEach>
    	</c:when>
    
    </c:choose>

     <%--  <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
          <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/jejuhotel/first/first1.jpeg" alt="">
        </a>
      </div>

      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
          <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/jejuhotel/first/first2.jpeg" alt="">
        </a>
      </div>

      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
          <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/jejuhotel/first/first3.jpeg" alt="">
        </a>
      </div>

      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
          <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/jejuhotel/first/first4.jpeg" alt="">
        </a>
      </div>
 --%>
    </div>
    <!-- /.row -->
 
   
       <!-- Side Widget -->
        <div class="card my-4">
          <h5 class="card-header">실제 예약하신 고객님의 생생한 후기입니다  <input type="button" onclick="addReplyWindow()" value="댓글 작성"></h5>
             <div id="modDiv">
			<h3>호텔 후기 댓글 남기기</h3>
			<!-- 댓글 번호 -->
			<div class="mod-title"></div>
			<!-- 댓글 내용 -->
			<div>
				<input type="text" id="modCommentText"  size="100"/>
				<input type="button" id="addHotelReview" value="후기 남기기" onclick="addHotelReview()">
			</div>
		</div>
          <div class="card-body">
         	<table>
         		<tr>	
 					<td>
 					작성내용
 					</td>
 					<td>
 					이름
 					</td>
 					<td>
 					등록일
 					</td>
 				</tr>
         	</table>
         	 <h5 class="mt-0">
         	 <c:choose>
         	 	<c:when test="${!empty clist}">
         	 		<c:forEach var="c" items="${clist}">
         	 			<table>
         	 				<tr>	
         	 					<td>
         	 					${c.ctext}
         	 					</td>
         	 					<td>
         	 					${c.mname}
         	 					</td>
         	 					<td>
         	 					${c.regDate}
         	 					</td>
         	 				</tr>
         	 			</table>
         	 		</c:forEach>
         	 	</c:when>
         	 	<c:otherwise>
         	 		등록된 후기가 존재하지 않습니다.
         	 	</c:otherwise>
         	 </c:choose>
         	  </h5>
          </div>
        </div>


  </div>
  <!-- /.container -->

   <!-- Footer -->
   <%@ include file="../../../common/footer.jsp" %>
   
   <script>
   			// 삭제 컨펌
   		$("#deleteHotel").click(function(){
   			
   			if(confirm("정말로 삭제합니까?") == true){
   				var str = "";
   					str += "확인을 위해 호텔 이름을 한번 더 입력해주세요 <input type='text' id='deleteCheck' name='hotelname'>";
   					str +=" <input type='button' value='삭제요청' id='CheckSubmit'/>";
   				$("#confirmCheck").html(str);
   				
   			}else{
   				str = "";
   				$("#confirmCheck").html(str);
   				return;
   			}; 	
   			
   		});
   		/* 	
   			$("#passwordInput").on("click","input",function(){
				
   				var deleteCheck = $("#deleteCheck").val();
   				console.log(deleteCheck);
   				
   				//일치 불일치 비동기 체크 구현
   			});
   			
   			
    */
    
    //버튼
    
    //원래 바디에 존재 했던 것을 기준으로 두번째(해당속성)이 첫번째 동작시
    $("#confirmCheck").on("click","#CheckSubmit",function(){
    	
    	$("#deleteHotelSubmit").submit();
    	
    });
    
    $("#intBtn").click(function(){
    	
    	//로그인 한 계정인지 아닌지 판별 
    	 var hno =$("#hno").val();
    	 var mno =$("#mno").val();

    	 console.log(hno);
    	 console.log(mno);
    	
    	 
    	 if(mno == ''){
    		 
    		 alert("해당 기능은 로그인 후 사용 가능 합니다.");
    		 
    		 return;
    	 }else{
    	 		
    		 if(confirm("해당 호텔을 관심등록 하시겠습니까?")){

    				
    				$.ajax({
    					type:"get",
    					url:"${pageContext.request.contextPath}/member/reginterestedHotel/"+hno+"/"+mno,
    					dataType:"json",
    					success : function(data){
    						console.log(data);
    						var result = data.result;
    						console.log(result);
	    						if(result == "already"){
	    							alert("이미 등록한 호텔 정보 입니다.");
	    						}else{
		    						if(result == "true"){
					    			 alert("등록 완료!")
		    						}else{
		    						 alert("관심 등록은 최대 5개까지 가능합니다");
		    						}
    						}
    						
    					}
    				
    				});
    			 
    			
    			 
    		 }else{
    			 alert("관심 등록을 취소하셨습니다.");
    		 }
    	 
    	 }
    	 
    });
    
    
    
    //댓글창
    function addReplyWindow(){
    	$("#modDiv").toggle("slow");
    	
    	
    	
    	
    	var str = "실제 예약하신 고객님의 생생한 후기입니다 <input type='button' value='작성취소' id='cencelBtn'>";
    	$(".card-header").html(str);
    }
    
    
    
    // 취소
    $(".card-header").on("click","#cencelBtn",function(){
    	
    	var html ="실제 예약하신 고객님의 생생한 후기입니다 <input type='button' onclick='addReplyWindow()' value='댓글 작성'>";
    	$(".card-header").html(html);
    	
    	$("#modDiv").hide("slow");
    	
    	
    });
    
    //후기 등록 버튼
    
    function addHotelReview(){
    	
    	var mno = "${memberInfo.mno}";
		var hno = $("#hno").val();
		var mname = $("#mname").val();
		var ctext =$("#modCommentText").val();
		
		if(mno == ""){
    		alert("로그인 후에 사용해 주세요");
    	}
		
		$.ajax({
			type:"POST",
			url : "${pageContext.request.contextPath}/member/addComment",
			headers : {
				"Content-Type" : "application/json"
			},data : JSON.stringify({
				mno : mno,
				hno : hno,
				ctext : ctext,
				mname : mname
			}),
			dataType : "text",
			success : function(result){
				console.log(result);
				if(result == "fail"){
					alert("예약정보가 존재하는 회원만 후기를 남길 수 있습니다.");
					$("#modCommentText").val("");
				}else if(result == "notadd"){
					alert("후기를 2개 이상 작성 하실수 없습니다.");
				}
					else{
					alert("등록완료");
					history.go();
				}
			}
			
			
		});
		
    };
    

    

   </script>
  
 
</body>

</html>
