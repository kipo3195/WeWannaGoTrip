<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
        <p>${hotel.hlikecnt}</p>
        <p>${hotel.hgrade}</p>
        <h3 class="my-3">부대시설</h3>
        <ul>
          <li>사용 편의 시설 1</li>
          <li>사용 편의 시설 2</li>
          <li>사용 편의 시설 3</li>
          <li>사용 편의 시설 4</li>
        </ul>
        <!-- 세션 정보(관리자, 이용자)에 따른  -->
        
          
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
		         	  	<input type="hidden" value="${hotel.hno}" name="hno">
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
    <h3 class="my-4">Related Projects</h3>

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
          <h5 class="card-header">실제 예약하신 고객님의 생생한 후기입니다</h5>
          <div class="card-body">
         	 <h5 class="mt-0">예약자 명</h5>
            You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
         	<!-- 사용자 닉네임 추가 -->
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

    	 console.log(position);
    	 console.log(hno);
    	 console.log(mno);
    	 if(position != null){
    		alert("관리자는 해당기능을 사용 할 수 없습니다."); 
    	 }
    	 
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
    

    

   </script>
  
 
</body>

</html>
