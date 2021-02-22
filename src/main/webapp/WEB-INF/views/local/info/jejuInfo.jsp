<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

 <!-- Head -->
 <%@ include file="../../common/header.jsp" %>
 
<style>
input[type="radio"] {display:none;}
input[type="radio"] + label {
							display:inline-block;
							padding:15px;
							background:#73E1E1;/*#036635  #64D2D2  #DCEDC8*/
							color:#fff;
							font-size:20px;
							cursor:pointer;
	}
input[type="radio"] : checked + label {
						background:#aaa;
						color:#000;
	}
	

.conbox {
	width:100%;
	height:100%;
	background:#aaa;
	margin:0 auto;
	display : none;
}

input[id="tab01"]:checked ~ .con1 {
		display : block;
}
input[id="tab02"]:checked ~ .con2 {
		display : block;
}
input[id="tab03"]:checked ~ .con3 {
		display : block;
}
input[id="tab04"]:checked ~ .con4 {
		display : block;
}
</style>



<body>

  <!-- Navigation -->
 <%@ include file="../../common/navigation.jsp" %>

  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">JEJU TOUR
      &nbsp;<small>명소</small>
    </h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="${pageContext.request.contextPath}">Home</a>
      </li>
      <li class="breadcrumb-item active">Jeju Tour</li>
    </ol>



<div class="tab_content">
	<input type="radio" name="tabmenu" id="tab01" checked>
	<label for="tab01"> Nature & Park </label>	
	<input type="radio" name="tabmenu" id="tab02">
	<label for="tab02"> Landmark </label>
	<input type="radio" name="tabmenu" id="tab03">
	<label for="tab03"> Museum </label>
	<input type="radio" name="tabmenu" id="tab04">
	<label for="tab04"> Consert & Show</label>
	
	<!-- Tab1 -->
	<div class="conbox con1">
	 <!-- Blog Post -->
    <div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <a href="#">
              <img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/img/jejuinfo/jungbang.jpg" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <h2 class="card-title">정방 폭포</h2>
            <p class="card-text">#폭포 #경관 #포토 #커플 #여름</p>
            <a href="jungbang" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        	Nature & Park
        <a href="#">정방 폭포</a>
      </div>
    </div>
     <!-- Blog Post -->
    <div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <a href="#">
              <img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/img/jejuinfo/seabyul.jpeg" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <h2 class="card-title">새별오름</h2>
            <p class="card-text">새별오름은 #바리메오름 #누운오름 #당오름 #금오름 등 많은 대표오름 </p>
            <a href="#" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        Nature & Park
        <a href="#">새별 오름</a>
      </div>
    </div>

    <!-- Blog Post -->
    <div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <a href="#">
              <img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/img/jejuinfo/jiyeon.jpg" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <h2 class="card-title">천지연 폭포</h2>
            <p class="card-text">하늘과 땅이 만나서 이룬 연못 · 천연기념물 제163호 · 천연기념물 제27호 </p>
            <a href="#" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        Nature & Park
        <a href="#">천지연 폭포</a>
      </div>
    </div>

    <!-- Blog Post -->
    <div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <a href="#">
              <img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/img/jejuinfo/bibi.png" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <h2 class="card-title">비자림</h2>
            <p class="card-text">비자림은 500~800년생 비자나무들이 자생하는 세계적으로도 희귀한 장소다. 벼락 맞은 나무부터 긴 세월이 느껴지는 아름드리 나무까지 다양한 비자나무를 만날 수 있다.</p>
            <a href="#" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        Nature & Park
        <a href="#">비자림</a>
      </div>
    </div>
    
    <!-- Blog Post -->
    <div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <a href="#">
              <img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/img/jejuinfo/seo.jpg" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <h2 class="card-title">함덕 서우봉 해변</h2>
            <p class="card-text">#밤 #커플 #여름 #해변 #카페</p>
            <a href="#" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        Nature & Park
        <a href="#">함덕 서우봉 해변</a>
      </div>
    </div>
    
    <!-- Blog Post -->
    <div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <a href="#">
              <img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/img/jejuinfo/dol.jpg" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <h2 class="card-title">제주 돌문화 공원</h2>
            <p class="card-text">제주의 바람과 신화를 머금은 아름다운 돌을 감상하다</p>
            <a href="#" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        Nature & Park
        <a href="#">제주 돌문화 공원</a>
      </div>
    </div>
    
     <!-- Pagination -->
    <ul id="pagenation">
    
    </ul>
    
	<!-- Tab 1 끝 -->
	</div>
	
	<!-- Tab2 -->
	<div class="conbox con2">
	 <!-- Blog Post -->
    <div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <a href="#">
              <img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/img/jejuinfo/udo.jpg" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <h2 class="card-title">우도</h2>
            <p class="card-text">우도는 제주도의 동쪽 끝에 접하는 섬으로, 제주특별자치도에서 제주도 다음으로 큰 섬이다. 우도란 이름은 섬의 모습이 소가 누워 있는 것 같다고 해서 붙여졌다.</p>
            <a href="#" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        Landmark
        <a href="#">우도</a>
      </div>
    </div>
    <!-- 
     Blog Post
    <div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <a href="#">
              <img class="img-fluid rounded" src="http://placehold.it/750x300" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <h2 class="card-title">Post Title</h2>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
            <a href="#" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        Posted on January 1, 2017 by
        <a href="#">Start Bootstrap</a>
      </div>
    </div> -->

    
	<!-- Tab 2 끝 -->
	</div>
	<!-- Tab3 -->
	<div class="conbox con3">
		 <!-- Blog Post -->
    <div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <a href="#">
              <img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/img/jejuinfo/mi.jpg" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <h2 class="card-title">제주도립미술관</h2>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
            <a href="#" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
       		Museum
        <a href="#">제주도립미술관</a>
      </div>
    </div>
    <!-- 
     Blog Post
    <div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <a href="#">
              <img class="img-fluid rounded" src="http://placehold.it/750x300" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <h2 class="card-title">Post Title</h2>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>
            <a href="#" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        Posted on January 1, 2017 by
        <a href="#">Start Bootstrap</a>
      </div>
    </div> -->

	
	
	<!-- Tab 3 끝 -->
	</div>
	<!-- Tab4 -->
	<div class="conbox con4">
		 <!-- Blog Post -->
    <div class="card mb-4">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-6">
            <a href="#">
              <img class="img-fluid rounded" src="${pageContext.request.contextPath}/resources/img/jejuinfo/nanta.jpg" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <h2 class="card-title">제주 난타 :THE NANTA</h2>
            <p class="card-text">전 세계 58개국 312개 도시 해외공연투어. 총 41,680회 공연 1300만 관객 관람</p>
            <a href="#" class="btn btn-primary">Read More &rarr;</a>
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        Consert & Show
        <a href="#">제주 난타 :THE NANTA</a>
      </div>
    </div>
    
   
	<!-- Tab 4 끝 -->
	</div>
</div>

  
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
		
		placePage(page);
		
		$("#pagenation").on("click","li a",function(event){
			event.preventDefault();
			var plPage = $(this).attr("href");
			page = plPage;
			placePage(plPage);
		});
		
		function placePage(page){
			$.ajax({
				type : "get",
				url : "pl/"+page,
				dataType : "json",
				success : function(data){
					console.log(data.pm);
					console.log(data.placelist);
					printplist(data.placelist);
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
		
		function printplist(data){
			var str="";
			$(data).each(function(){
				var pno = this.pno;
				var pname = this.pname;
				var paddress = this.paddress;
				var ptel = this.ptel;
				var popentoclose = this.popentoclose;
				var pgooglemap = this.pgooglemap;
				var pregdate = this.pregdate;
				var pupdatedate = this.pupdatedate;
				var plikecnt = this.likecnt;
				var pregdate = this.pregdate;
				var mainimg = this.mainimg;
				
				str += " <div class='col-lg-3 col-md-4 col-sm-6 portfolio-item'> ";
				str += " <div class='card h-100'> ";
				str += " <a href='#''><img class='card-img-top' src='${pageContext.request.contextPath}/resources/img/jejuinfo/"+pmainimg+".jpg' alt=''></a> ";
				str += " <div class='card-body'> ";
				str += " <h4 class='card-title'> "
				str += " <a href='#'>"+pname+"</a> ";
				str += " <img src='${pageContext.request.contextPath}/resources/img/etc/like.png'/> "
				str +=  plikecnt;
				str += " </h4> ";
				str += " <p class='card-text'>"+paddress+"</p> ";
				str += " <p class='card-text'>"+popentoclose+"</p> ";
				str += " <p class='card-text'>"+ptel+"</p> ";
				str += " <p class='card-text'>등록일자 : "+pregdate+"</p> ";
				str += " </div> ";
				str += " </div> ";
				str += " </div> ";
			});
			$(".row").html(str);
		}
		
	
	</script>
   

</body>

</html>
