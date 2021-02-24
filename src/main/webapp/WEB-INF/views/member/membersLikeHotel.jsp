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
        center: new kakao.maps.LatLng(33.37330, 126.54524), 
        level: 10 // 지도의 확대 레벨
    };
    
 

var Hotelmap = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

var test1 = "${map.HotelList[0].hwedo}";
var test2 = "${map.HotelList[0].hkyungdo}";
var test3 = "${map.HotelList[1].hwedo};"
var test4 = "${map.HotelList[1].hkyungdo}";
var test5 = "${map.HotelList[2].hwedo}";
var test6 = "${map.HotelList[2].hkyungdo}";
var test7 = "${map.HotelList[3].hwedo}";
var test8 = "${map.HotelList[3].hkyungdo}";
var test9 = "${map.HotelList[4].hwedo}";
var test10 = "${map.HotelList[4].hkyungdo}";



if(test1 != ""){
	
	if(test3 != ""){
		
		if(test5 != ""){
			
			if(test7 != ""){
				
				if(test9 != ""){
					
					var positions = [
					    {
					        content: '<div>${map.HotelList[0].hname}</div>', 
					        latlng: new kakao.maps.LatLng(parseFloat(test1), parseFloat(test2))
					    }, 
					    {
					        content: '<div>${map.HotelList[1].hname}</div>', 
					        latlng: new kakao.maps.LatLng(parseFloat(test3), parseFloat(test4))
					    }, 
					    {
					        content: '<div>${map.HotelList[2].hname}</div>', 
					        latlng: new kakao.maps.LatLng(parseFloat(test5), parseFloat(test6))
					    }, 
					    {
					        content: '<div>${map.HotelList[3].hname}</div>', 
					        latlng: new kakao.maps.LatLng(parseFloat(test7), parseFloat(test8))
					    }, 
					    {
					        content: '<div>${map.HotelList[4].hname}</div>', 
					        latlng: new kakao.maps.LatLng(parseFloat(test9), parseFloat(test10))
					    }
					    
					];

					for (var i = 0; i < positions.length; i ++) {
					    // 마커를 생성합니다
					    var marker = new kakao.maps.Marker({
					        map: Hotelmap, // 마커를 표시할 지도
					        position: positions[i].latlng // 마커의 위치
					    });

					    var infowindow = new kakao.maps.InfoWindow({
					        content: positions[i].content // 인포윈도우에 표시할 내용
					    });
					    
					    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(Hotelmap, marker, infowindow));
					    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
					} 

					function makeOverListener(map, marker, infowindow) {
					    return function() {
					        infowindow.open(map, marker);
					    };
					}

					// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
					function makeOutListener(infowindow) {
					    return function() {
					        infowindow.close();
					    };
					}
				}else
				//4개 정의
				var positions = [
					    {
					        content: '<div>${map.HotelList[0].hname}</div>', 
					        latlng: new kakao.maps.LatLng(parseFloat(test1), parseFloat(test2))
					    }, 
					    {
					        content: '<div>${map.HotelList[1].hname}</div>', 
					        latlng: new kakao.maps.LatLng(parseFloat(test3), parseFloat(test4))
					    }, 
					    {
					        content: '<div>${map.HotelList[2].hname}</div>', 
					        latlng: new kakao.maps.LatLng(parseFloat(test5), parseFloat(test6))
					    }, 
					    {
					        content: '<div>${map.HotelList[3].hname}</div>', 
					        latlng: new kakao.maps.LatLng(parseFloat(test7), parseFloat(test8))
					    }
					    
					];

					for (var i = 0; i < positions.length; i ++) {
					    // 마커를 생성합니다
					    var marker = new kakao.maps.Marker({
					        map: Hotelmap, // 마커를 표시할 지도
					        position: positions[i].latlng // 마커의 위치
					    });

					    var infowindow = new kakao.maps.InfoWindow({
					        content: positions[i].content // 인포윈도우에 표시할 내용
					    });
					    
					    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(Hotelmap, marker, infowindow));
					    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
					} 

					function makeOverListener(map, marker, infowindow) {
					    return function() {
					        infowindow.open(map, marker);
					    };
					}

					// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
					function makeOutListener(infowindow) {
					    return function() {
					        infowindow.close();
					    };
					}
				
			}else
			//3개 정의
			var positions = [
					    {
					        content: '<div>${map.HotelList[0].hname}</div>', 
					        latlng: new kakao.maps.LatLng(parseFloat(test1), parseFloat(test2))
					    }, 
					    {
					        content: '<div>${map.HotelList[1].hname}</div>', 
					        latlng: new kakao.maps.LatLng(parseFloat(test3), parseFloat(test4))
					    }, 
					    {
					        content: '<div>${map.HotelList[2].hname}</div>', 
					        latlng: new kakao.maps.LatLng(parseFloat(test5), parseFloat(test6))
					    }
					    
					];

					for (var i = 0; i < positions.length; i ++) {
					    // 마커를 생성합니다
					    var marker = new kakao.maps.Marker({
					        map: Hotelmap, // 마커를 표시할 지도
					        position: positions[i].latlng // 마커의 위치
					    });

					    var infowindow = new kakao.maps.InfoWindow({
					        content: positions[i].content // 인포윈도우에 표시할 내용
					    });
					    
					    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(Hotelmap, marker, infowindow));
					    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
					} 

					function makeOverListener(map, marker, infowindow) {
					    return function() {
					        infowindow.open(map, marker);
					    };
					}

					// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
					function makeOutListener(infowindow) {
					    return function() {
					        infowindow.close();
					    };
					}
		}else
		//2개만정의
		var positions = [
					    {
					        content: '<div>${map.HotelList[0].hname}</div>', 
					        latlng: new kakao.maps.LatLng(parseFloat(test1), parseFloat(test2))
					    }, 
					    {
					        content: '<div>${map.HotelList[1].hname}</div>', 
					        latlng: new kakao.maps.LatLng(parseFloat(test3), parseFloat(test4))
					    }
					    
					];

					for (var i = 0; i < positions.length; i ++) {
					    // 마커를 생성합니다
					    var marker = new kakao.maps.Marker({
					        map: Hotelmap, // 마커를 표시할 지도
					        position: positions[i].latlng // 마커의 위치
					    });

					    var infowindow = new kakao.maps.InfoWindow({
					        content: positions[i].content // 인포윈도우에 표시할 내용
					    });
					    
					    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(Hotelmap, marker, infowindow));
					    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
					} 

					function makeOverListener(map, marker, infowindow) {
					    return function() {
					        infowindow.open(map, marker);
					    };
					}

					// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
					function makeOutListener(infowindow) {
					    return function() {
					        infowindow.close();
					    };
					}
		
	}else
	//1개만 정의
	var positions = [
					    {
					        content: '<div>${map.HotelList[0].hname}</div>', 
					        latlng: new kakao.maps.LatLng(parseFloat(test1), parseFloat(test2))
					    }
					    
					];

					for (var i = 0; i < positions.length; i ++) {
					    // 마커를 생성합니다
					    var marker = new kakao.maps.Marker({
					        map: Hotelmap, // 마커를 표시할 지도
					        position: positions[i].latlng // 마커의 위치
					    });

					    var infowindow = new kakao.maps.InfoWindow({
					        content: positions[i].content // 인포윈도우에 표시할 내용
					    });
					    
					    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(Hotelmap, marker, infowindow));
					    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
					} 

					function makeOverListener(map, marker, infowindow) {
					    return function() {
					        infowindow.open(map, marker);
					    };
					}

					// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
					function makeOutListener(infowindow) {
					    return function() {
					        infowindow.close();
					    };
					}
}else{

	 alert("관심등록된 호텔이 없습니다.");
}






////////////////////////////////////////

if(test1 != ""){
	
	
	if(test3 != ""){
		
		
		
		var positions = [
		    {
		        content: '<div>${map.HotelList[0].hname}</div>', 
		        latlng: new kakao.maps.LatLng(parseFloat(test1), parseFloat(test2))
		    }, 
		    {
		        content: '<div>${map.HotelList[1].hname}</div>', 
		        latlng: new kakao.maps.LatLng(parseFloat(test3), parseFloat(test4))
		    }
		 
		];



		for (var i = 0; i < positions.length; i ++) {
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: Hotelmap, // 마커를 표시할 지도
		        position: positions[i].latlng // 마커의 위치
		    });

		    var infowindow = new kakao.maps.InfoWindow({
		        content: positions[i].content // 인포윈도우에 표시할 내용
		    });
		    
		    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(Hotelmap, marker, infowindow));
		    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		} 

		function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		}
		
		
	}else{
		var positions = [
		    {
		        content: '<div>${map.HotelList[0].hname}</div>', 
		        latlng: new kakao.maps.LatLng(parseFloat(test1),parseFloat(test2))
		    },
		 
		];

		for (var i = 0; i < positions.length; i ++) {
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: Hotelmap, // 마커를 표시할 지도
		        position: positions[i].latlng // 마커의 위치
		    });

		    var infowindow = new kakao.maps.InfoWindow({
		        content: positions[i].content // 인포윈도우에 표시할 내용
		    });
		    
		    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(Hotelmap, marker, infowindow));
		    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
		} 

		function makeOverListener(map, marker, infowindow) {
		    return function() {
		        infowindow.open(map, marker);
		    };
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
		    return function() {
		        infowindow.close();
		    };
		}
		
	}
	
	
}


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
            <input type="hidden" id="ino" value="${map.interlist[0].ino}">
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
          <div class="col-lg-6">
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

 <%--  <!-- Footer -->
   <%@ include file="../common/footer.jsp" %> --%>

   <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script>
	
	//여기 속성 어떻게 접근 해야하는지 ?
	 
	$("#deleteBtn").on("click",function(event){
		event.preventDefault();
		
		 var ino = $(this).closest(".card").find("#ino").val();
		
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
						history.go();
						
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
