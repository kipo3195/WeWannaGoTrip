<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

 <!-- Head -->
 <%@ include file="../../common/header.jsp" %>

<body>

  <!-- Navigation -->
  <%@ include file="../../common/navigation.jsp" %>

  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">제주 맛집 정보
      <small>카페 & 식당</small>
    </h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="#">평점순</a>&nbsp;/&nbsp;
        <a href="#">추천 후기 많은 순</a>&nbsp;/&nbsp;
        <a href="#">카페만 보기</a>&nbsp;/&nbsp;
        <a href="#">식당만 보기</a>&nbsp;/&nbsp;
        <a href="#">카페 + 식당 함께 보기</a>
      </li>
    </ol>

    <div class="row">
     <%--  <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/jejuCafeRes/missing.jpg" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
            <!-- 카페에 대한 정보를 바탕으로  -->
              <a href="missing">카페 그리울땐 제주</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/jejuCafeRes/osulok.jpg" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">카페 오설록</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/jejuCafeRes/dot.jpg" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#"> 닻 </a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/jejuCafeRes/jejus.jpg" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">카페 제주스</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/jejuCafeRes/bedi.jpg" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">카페 벧디</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/jejuCafeRes/064.jpg" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#"> 064 바당</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque earum nostrum suscipit ducimus nihil provident, perferendis rem illo, voluptate atque, sit eius in voluptates, nemo repellat fugiat excepturi! Nemo, esse.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/jejuCafeRes/bami.jpg" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">카페 바미아일랜드</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="${pageContext.request.contextPath}/resources/img/jejuCafeRes/takma.jpg" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="#">타쿠마 스시</a>
            </h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius adipisci dicta dignissimos neque animi ea, veritatis, provident hic consequatur ut esse! Commodi ea consequatur accusantium, beatae qui deserunt tenetur ipsa.</p>
          </div>
        </div>
      </div> --%>
    </div> 

    <!-- Pagination -->
    <div id="pagenation">
    
    </div>
    
<!--     <ul class="pagination justify-content-center">
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
   <%@ include file="../../common/footer.jsp" %>

 <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	
	<script>
		var page = 1;
		
		cafePage(page);
		
		$("#pagenation").on("click","li a",function(event){
			event.preventDefault();
			var crPage = $(this).attr("href");
			page = crPage;
			cafePage(crPage);
		});
		
		
		function cafePage(page){
			$.ajax({
				type:"get",
				url : "cr/"+page,
				dateType:"json",
				success: function(data){
					console.log(data.pm);
					console.log(data.caleslist);
					printclist(data.caleslist);
					pagenation(data.pm); 
				}
			});
		}
		
	
		function pagenation(pm){
			console.log(pm);
				var str = "<ul class='pagination justify-content-center'> ";
			if(pm.first){
				 str += " <li class='page-item'> <a class='page-link' href='#'>처음</a> </li> ";
				}
			if(pm.prev){
			 str += " <li class='page-item'> <a class='page-link' href='#'>이전</a> </li> ";
			 }
			 for(var i=1; i<=pm.displayPageNum; i++){
			 str += " <li class='page-item'> <a class='page-link' href='"+i+"'>"+i+"</a> </li> "; 
			 }	
			if(pm.next){
			str += " <li class='page-item'> <a class='page-link' href='#'>다음</a> </li> ";
				
			}
			if(pm.last){
			str += " <li class='page-item'> <a class='page-link' href='#'>마지막</a> </li> ";
			}
	
			$("#pagenation").html(str);
			
		}
		
		
		function printclist(data){
			var str ="";
			$(data).each(function(){
				
			var crname = this.crname;
			var crRecmenu = this.crRecmenu;
			var craddress = this.craddress;
			var cremail = this.cremail;
			var crtel = this.crtel;
			var opentoclose = this.cropentoclose;
			var crregdate = this.crregdate;
			var crlikecnt = this.crlikecnt;
			var mainimg = this.mainimg;
			console.log(crname);
			let date = new Date(crregdate);
			fmtdate = getFormatDate(date);
			
			str += " <div class='col-lg-3 col-md-4 col-sm-6 portfolio-item'> ";
			str += " <div class='card h-100'> ";
			str += " <a href='#''><img class='card-img-top' src='${pageContext.request.contextPath}/resources/img/jejuCafeRes/"+mainimg+".jpg' alt=''></a> ";
			str += " <div class='card-body'> ";
			str += " <h4 class='card-title'> "
			str += " <a href='#'>"+crname+"</a> ";
			str += " <img src='${pageContext.request.contextPath}/resources/img/etc/like.png'/> "
			str +=  crlikecnt;
			str += " </h4> ";
			str += " <p class='card-text'>"+crRecmenu+"</p> ";
			str += " <p class='card-text'>"+craddress+"</p> ";
			str += " <p class='card-text'>"+opentoclose+"</p> ";
			str += " <p class='card-text'>"+crtel+"</p> ";
			str += " <p class='card-text'>등록일자 : "+fmtdate+"</p> ";
			str += " </div> ";
			str += " </div> ";
			str += " </div> ";
			
			});
			$(".row").append(str);
		}
		
		
		
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
