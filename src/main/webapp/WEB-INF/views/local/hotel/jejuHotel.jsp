<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<!-- Head -->
<%@ include file="../../common/header.jsp"%>

<body>

	<!-- Navigation -->
	<%@ include file="../../common/navigation.jsp"%>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			제주 호텔 미리보기 <small></small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="#">평점순</a>&nbsp;/&nbsp; <a
				href="#">평점 + 낮은가격</a>&nbsp;/&nbsp; <a href="#">낮은가격순</a>&nbsp;/&nbsp;
				<a href="#">신규 등록순</a></li>
		</ol>


		<!-- !-- 호텔 리스트 출력 -->
		<div class="hotellist">
	
	
		</div>
		<%--  <c:choose>
  	<c:when test="${not empty hotellist}">
  		<c:forEach items="${hotellist}" var="h">
  		  <div class="row">
      		<div class="col-md-7">
        <a href="#">
          <img class="img-fluid rounded mb-3 mb-md-0" src="${pageContext.request.contextPath}/resources/img/jejuhotel/${h.hmainimg}.jpg" alt="">
        </a>
     	 </div>
      <div class="col-md-5">
        <h3 id="hname"></h3><!-- 호텔 이름 -->
        <p>${h.hinfo}<br/><!-- 호텔 정보 -->
        	${h.hprice}원<br/><!-- 호텔 가격 -->
        	${h.hscore}<br/><!-- 호텔 등급 -->
        	<img src="${pageContext.request.contextPath}/resources/img/etc/like.png"/> ${h.hlikecnt}<br/><!-- 호텔 좋아요 수 -->
        	호텔 등록일자 : ${h.hregdate}<br/></p><!-- 호텔 등록일 -->
        <a class="btn btn-primary" href="jejuHotel/Detail">호텔 상세보기
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
   		 </div>
   		 <hr/>
  		</c:forEach>
  	</c:when>
</c:choose>  --%>


		<%--   <!-- Project Two -->
    <div class="row">
      <div class="col-md-7">
        <a href="#">
          <img class="img-fluid rounded mb-3 mb-md-0" src="${pageContext.request.contextPath}/resources/img/jejuhotel/second.jpg" alt="">
        </a>
      </div>
      <div class="col-md-5">
        <h3>두번째 제주호텔 이름</h3>
        <p>호텔의 간단한 소개가 들어갑니다<br/>
        	호텔의 가격이 들어갑니다<br/>
        	호텔의 평점이 들어갑니다<br/>
        	등록일 2021-01-01<br/></p>
        <a class="btn btn-primary" href="#">View Project
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
    </div>
    <!-- /.row -->

    <hr>

    <!-- Project Three -->
    <div class="row">
      <div class="col-md-7">
        <a href="#">
          <img class="img-fluid rounded mb-3 mb-md-0" src="${pageContext.request.contextPath}/resources/img/jejuhotel/third.jpg" alt="">
        </a>
      </div>
      <div class="col-md-5">
        <h3>세번째 제주호텔 이름</h3>
        <p>호텔의 간단한 소개가 들어갑니다<br/>
        	호텔의 가격이 들어갑니다<br/>
        	호텔의 평점이 들어갑니다<br/>
        	등록일 2021-01-01<br/></p>
        <a class="btn btn-primary" href="#">View Project
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
    </div>
    <!-- /.row -->

    <hr> --%>

		<%--  <!-- Project Four -->
	    <div class="row">
	
	      <div class="col-md-7">
	        <a href="#">
	          <img class="img-fluid rounded mb-3 mb-md-0" src="${pageContext.request.contextPath}/resources/img/jejuhotel/4th.jpg" alt="">
	        </a>
	      </div>
	      <div class="col-md-5">
	        <h3>네번째 제주호텔 이름</h3>
	        <p>호텔의 간단한 소개가 들어갑니다<br/>
	        	호텔의 가격이 들어갑니다<br/>
	        	호텔의 평점이 들어갑니다<br/>
	        	등록일 2021-01-01<br/></p>
	        <a class="btn btn-primary" href="#">View Project
	          <span class="glyphicon glyphicon-chevron-right"></span>
	        </a>
	      </div>
	    </div>
	    
	    <!-- /.row -->
	
	    <hr> --%>

		<!-- Pagination -->
		<!--   <ul class="pagination justify-content-center">
      <li class="page-item">
        <a class="page-link" href="#" aria-label="Previous">
          <span aria-hidden="true">&laquo;</span>
          <span class="sr-only">Previous</span>
        </a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">1</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">2</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#">3</a>
      </li>
      <li class="page-item">
        <a class="page-link" href="#" aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
          <span class="sr-only">Next</span>
        </a>
      </li>
    </ul> -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<%@ include file="../../common/footer.jsp"%>


	<!--  
  function printList(list){
  var str = "";	
  $(list).each(function(){
	  var hno = this.hno;
	  var hname = this.hname;
	  var haddress = this.haddress;
	  var hregistdate = this.hregistdate;
	  var hgrade = this.hgrade;
	  var hscore = this.hscore;
	  console.log(hno);
  });} -->

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>

	<script>
  	var page = 1;
  	
  	listPage(page);
  	
	function listPage(page){
		
		$.ajax({
			type :"get",
			url : page,
			dataType : "json",
			success : function(data){
				console.log(data.pm);
				console.log(data.hotellist);
				printList(data.hotellist);
			}
		});
		
	}
	
	function printList(data){
		var str = "";
		$(data).each(function(){
			var hno = this.hno;
			var hname = this.hname;
			var hinfo = this.hinfo;
			var hcheckin = this.hcheckin;
			var hcheckout = this.hcheckout;
			var hscore = this.hscore;
			var hprice = this.hprice;
			var hlikecnt = this.hlikecnt;
			var hregdate = this.hregdate;
			var hmainimg = this.hmainimg;
			var hgrade = this.hgrade;
			
			let date = new Date(hregdate);
			fmtdate = getFormatDate(date);
			
			
		    str += " <div class='card mb-4'>"; 
			str += " <div class='card-body'> ";
			str += " <div class='row'> ";  
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
	        str += " "+hgrade+" <br>";
	        str += " 평균 평점:"+hscore+" <br/>";
	        str += " <img src='${pageContext.request.contextPath}/resources/img/etc/like.png'/> "+hlikecnt+"<br/> "; 
        	str += " 호텔 등록일자 : "+fmtdate+"<br/></p>"
	        str += " <a class='btn btn-primary' id='detailBtn' href='jejuHotel/Detail/"+hno+"'>호텔 상세보기";
	        str += " <span class='glyphicon glyphicon-chevron-right'></span> "
	        str += " </a>";
	        str += " </div> ";
	        str += " </div> ";
	        str += " </div> ";
	        str += " </div> ";
	        
	        
		});
		$(".hotellist").append(str);
	}

			

  
	$(window).scroll(function(){
		var dh = $(document).height();
		var wh = $(window).height();
		var wt = $(window).scrollTop();
		
		if((wt+wh) >= (dh - 10)){
			page++;
			listPage(page);
		}
	});
	
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
