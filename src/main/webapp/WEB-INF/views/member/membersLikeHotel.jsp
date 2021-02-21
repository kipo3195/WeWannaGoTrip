<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

 <!-- Head -->
 <%@ include file="../common/header.jsp" %>


<body>

  <!-- Navigation -->
 <%@ include file="../common/navigation.jsp" %>



    <!-- Page Heading/Breadcrumbs -->
    <br/>	
	<br/>
    <h1 class="mt-4 mb-3">내 관심 호텔   in 제주
    </h1>
     <div class="container">
    <!-- 호텔 맵  -->
    
    <div id="Hotelmap" style="width:100%;height:350px;">
    </div>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5ebd2c945c2a7c6405ad930cf5b4d20a"></script>
    <script>
    
    
    
var mapContainer = document.getElementById('Hotelmap'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.37330, 126.54524), // 지도의 중심좌표
        level: 10 // 지도의 확대 레벨
    };

var Hotelmap = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

var test1 = ${map.HotelList[0].hwedo};
var test2 = ${map.HotelList[0].hkyungdo};
 console.log(test1);
 console.log(test2);
// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(test1, test2); 
// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(Hotelmap);

var iwContent = '<div style="padding:5px;"> ${map.HotelList[0].hname} <br></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
iwPosition = new kakao.maps.LatLng(test1, test2); //인포윈도우 표시 위치입니다

//인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
position : iwPosition, 
content : iwContent 
});

infowindow.open(Hotelmap, marker); 

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
    
    </div>
    
    
      <!-- Page Content -->
  <div class="container">
    
 <%--    <c:forEach begin="0" end="5" step="1" > --%>
	<c:choose>
		<c:when test="${!empty map.interlist[0]}">
		<div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <img src="${pageContext.request.contextPath}/resources/img/jejuhotel/upload${map.HotelList[0].hmainimg}" alt=""/>
          </div>
          <div class="col-lg-6" >
            <h2 class="card-title">${map.HotelList[0].hname}</h2>
            <p class="card-text">${map.HotelList[0].hinfo}</p>
            <p class="card-text">${map.HotelList[0].haddress}</p>
            <p class="card-text">${map.HotelList[0].hcheckin}-${map.HotelList[0].hcheckin}</p>
            <p class="card-text">${map.HotelList[0].hgrade}</p>
            <a href="${pageContext.request.contextPath}/local/jejuHotel/reservation?hno=${map.HotelList[0].hno}" class="btn btn-primary">예약하러 가기</a>
            <%-- <a href="${pageContext.request.contextPath}/member/deleteInterHotel?ino=${map.interlist[0].ino}" class="btn btn-danger">삭제</a> --%>
            <a href="#" id="deleteBtn" class="btn btn-danger">삭제</a>
            
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        	 관심등록하신 날짜 : ${map.interlist[0].regdate}
      </div>
    </div>
    
		</c:when>
	</c:choose>
<%-- 	</c:forEach> --%>
<c:choose>
		<c:when test="${!empty map.interlist[1]}">
		<div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <img src="${pageContext.request.contextPath}/resources/img/jejuhotel/upload${map.HotelList[1].hmainimg}" alt=""/>
          </div>
          <div class="col-lg-6" >
            <h2 class="card-title">${map.HotelList[1].hname}</h2>
            <p class="card-text">${map.HotelList[1].hinfo}</p>
            <p class="card-text">${map.HotelList[1].haddress}</p>
            <p class="card-text">${map.HotelList[1].hcheckin}-${map.HotelList[1].hcheckin}</p>
            <p class="card-text">${map.HotelList[1].hgrade}</p>
            <a href="${pageContext.request.contextPath}/local/jejuHotel/reservation?hno=${map.HotelList[1].hno}" class="btn btn-primary">예약하러 가기</a>
            <%-- <a href="${pageContext.request.contextPath}/member/deleteInterHotel?ino=${map.interlist[0].ino}" class="btn btn-danger">삭제</a> --%>
            <a href="#" id="deleteBtn" class="btn btn-danger">삭제</a>
            
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        	 관심등록하신 날짜 : ${map.interlist[1].regdate}
      </div>
    </div>
    
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${!empty map.interlist[2]}">
		<div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <img src="${pageContext.request.contextPath}/resources/img/jejuhotel/upload${map.HotelList[2].hmainimg}" alt=""/>
          </div>
          <div class="col-lg-6" >
            <h2 class="card-title">${map.HotelList[2].hname}</h2>
            <p class="card-text">${map.HotelList[2].hinfo}</p>
            <p class="card-text">${map.HotelList[2].haddress}</p>
            <p class="card-text">${map.HotelList[2].hcheckin}-${map.HotelList[2].hcheckin}</p>
            <p class="card-text">${map.HotelList[2].hgrade}</p>
            <a href="${pageContext.request.contextPath}/local/jejuHotel/reservation?hno=${map.HotelList[0].hno}" class="btn btn-primary">예약하러 가기</a>
            <%-- <a href="${pageContext.request.contextPath}/member/deleteInterHotel?ino=${map.interlist[0].ino}" class="btn btn-danger">삭제</a> --%>
            <a href="#" id="deleteBtn" class="btn btn-danger">삭제</a>
            
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        	 관심등록하신 날짜 : ${map.interlist[2].regdate}
      </div>
    </div>
    
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${!empty map.interlist[3]}">
		<div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <img src="${pageContext.request.contextPath}/resources/img/jejuhotel/upload${map.HotelList[3].hmainimg}" alt=""/>
          </div>
          <div class="col-lg-6" >
            <h2 class="card-title">${map.HotelList[3].hname}</h2>
            <p class="card-text">${map.HotelList[3].hinfo}</p>
            <p class="card-text">${map.HotelList[3].haddress}</p>
            <p class="card-text">${map.HotelList[3].hcheckin}-${map.HotelList[3].hcheckin}</p>
            <p class="card-text">${map.HotelList[3].hgrade}</p>
            <a href="${pageContext.request.contextPath}/local/jejuHotel/reservation?hno=${map.HotelList[3].hno}" class="btn btn-primary">예약하러 가기</a>
            <%-- <a href="${pageContext.request.contextPath}/member/deleteInterHotel?ino=${map.interlist[0].ino}" class="btn btn-danger">삭제</a> --%>
            <a href="#" id="deleteBtn" class="btn btn-danger">삭제</a>
            
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        	 관심등록하신 날짜 : ${map.interlist[3].regdate}
      </div>
    </div>
    
		</c:when>
	</c:choose>
	<c:choose>
		<c:when test="${!empty map.interlist[4]}">
		<div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <img src="${pageContext.request.contextPath}/resources/img/jejuhotel/upload${map.HotelList[4].hmainimg}" alt=""/>
          </div>
          <div class="col-lg-6" >
            <h2 class="card-title">${map.HotelList[4].hname}</h2>
            <p class="card-text">${map.HotelList[4].hinfo}</p>
            <p class="card-text">${map.HotelList[4].haddress}</p>
            <p class="card-text">${map.HotelList[4].hcheckin}-${map.HotelList[4].hcheckin}</p>
            <p class="card-text">${map.HotelList[4].hgrade}</p>
            <a href="${pageContext.request.contextPath}/local/jejuHotel/reservation?hno=${map.HotelList[4].hno}" class="btn btn-primary">예약하러 가기</a>
            <%-- <a href="${pageContext.request.contextPath}/member/deleteInterHotel?ino=${map.interlist[0].ino}" class="btn btn-danger">삭제</a> --%>
            <a href="#" id="deleteBtn" class="btn btn-danger">삭제</a>
            
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        	 관심등록하신 날짜 : ${map.interlist[4].regdate}
      </div>
    </div>
    
		</c:when>
	</c:choose>

	
	
	

 

  </div>
  <!-- /.container -->

  <!-- Footer -->
   <%@ include file="../common/footer.jsp" %>

   <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script>
	 var ino = ${map.interlist[0].ino};
	 
	$("#deleteBtn").on("click",function(event){
		event.preventDefault();
		
		if(confirm("삭제 하시겠습니까?")){
			console.log("삭제요청");
		
			
			$.ajax({
				type:"get",
				url:"${pageContext.request.contextPath}/member/deleteInterHotel/"+ino,
				dataType:"text",
				success : function(data){
					console.log(data);
					var result = data;
					if(result == "Success"){
						alert("삭제완료");
					}else{
						alert("삭제 처리 실패");
					}
					}
			});
			
		}else{
			alert("취소 되었습니다.");
			return;
		}
		
		
	});
	
	</script>
</body>

</html>
