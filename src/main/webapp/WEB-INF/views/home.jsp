<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<!-- Head -->
 <%@ include file="common/header.jsp" %>
<!-- <style>
	.gallerylist{
		max-width:1200px;
		width:100%;
		margin: 0 auto;
	}
	.uul {
		font-size:0;
	}
	.uul > .lli {
		display : inline-block;
		vertical-align : top;
		width:33%;
	}
    .uul > .lli > a {
    	display : block;
    	width: auto;
    	text-decoration : none;
    	margin : 5px;
    }
   .uul > .lli > a .screen {
   	position : relative;
   	overflow : hidden;
   }
    .uul > .lli > a .screen .top {
   	position : absolute;
   	bottom : 150%;
   	left : 30px;
   	z-index : 2;
   	color : #fff;/*흰색*/
   	font-size : 26px;
   	font-weight:900;
   }
   .uul > .lli > a .screen .bottom {
   	position : absolute;
   	top : 150%;
   	left : 30px;
   	z-index : 2;
   	color : #fff;
   	font-size : 12px;
   }
    .uul > .lli > a .screen img {
    	width:100%;
    } 
   .uul > .lli > a h3 {
   	font-size : 14px;
   	text-align : center;
   	padding : 20px;
   	color : #666;
   } 
</style> -->

<body>
	<!-- Navigation -->
    <%@ include file="common/navigation.jsp" %>

  <header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <!-- Slide One - Set the background image for this slide in the line below -->
        <div class="carousel-item active" style="background-image: url('resources/img/mainslide/main2.jpg')">
          <div class="carousel-caption d-none d-md-block">
            <h3>월출산 전경</h3>
          </div>
        </div>
        <!-- Slide Two - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('resources/img/mainslide/main5.jpg')">
          <div class="carousel-caption d-none d-md-block">
            <h3>성산일출봉</h3>
          </div>
        </div>
        <!-- Slide Three - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('resources/img/mainslide/main3.png')">
<!--         <div class="carousel-item" style="background-image: url('http://placehold.it/1900x1080')"> -->
          <div class="carousel-caption d-none d-md-block">
            <h3>동궁과 월지</h3>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </header>

  <!-- Page Content -->
  <div class="container">

    <h1 class="my-4" style="text-align:center;">EVENT</h1>


   <!-- Marketing Icons Section -->
    <div class="row gallerylist">
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
            <a href="${pageContext.request.contextPath}/services" class="card-body">
            	<img src="resources/img/local/hiddenhotel.png" 
            	      style=" width:318px; height:260px; text-align : center; line-height:260px"/>
            </a>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
            <a href="${pageContext.request.contextPath}/services" class="card-body">
            	<img src="resources/img/local/olle.png" 
            	      style=" width:318px; height:320px; text-align : center; line-height:320px"/>
            </a>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
            <a href="${pageContext.request.contextPath}/services" class="card-body">
            	<img src="resources/img/local/food.jpg" 
            	      style=" width:318px; height:262px; text-align : center; line-height:262px;"/>
            </a>
        </div>
      </div>
    </div>
    <!-- /.row -->

    <!-- Portfolio Section -->
    <h2 style="text-align:center;"><b>국내</b></h2>

    <div class="row">
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="local/jeju"><img class="card-img-top" src="resources/img/local/jejudo.jpg" alt="" height="230px"></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="local/jeju">제주도&nbsp;<small>JEJU</small></a>
            </h4>
            <p class="card-text">
               #제주  #제주여행  #제주살이  
              <br/>#제주카페 #제주바다 #제주숲  
              <br/>#제주도맛집 #제주도민맛집
              <br/>#제주도호텔  #제주도핫플레이스</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="resources/img/local/busan.png" alt="" height="230px"></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="local/busan">부산&nbsp;<small>BUSAN</small></a>
            </h4>
            <p class="card-text">#부산 #부산맛집 #부산카페 
            <br/>#부산여행 #광안대교 #남포동트리축제 
            <br/>#해운대 #송정 #송정서핑
            <br/>#기장 #기장힐튼호텔             
            </p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="resources/img/local/seoul.jpg" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="local/seoul">서울&nbsp;<small>SEOUL</small></a>
            </h4>
            <p class="card-text">#서울 #서울맛집 #서울카페 
            <br/>#경복궁 #창덕궁 #북촌한옥마을 
            <br/>#강남 #홍대 #이태원 #서울패션위크
            <br/>#명동 #한강 #롯데월드 #롯데타워 </p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="resources/img/local/kangwon.jpeg" alt="" height="230px"></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="local/kangwon">강원도&nbsp;<small>GANGWON</small></a>
            </h4>
            <p class="card-text">#강원도 #강원도여행 #강원도펜션
            <br/>#강원도맛집 #강릉 #정동진 #속초  
            <br/>#평창 #춘천 #태백  #쁘띠프랑스 
            <br/>#설악산 #영월캠핑 #강원랜드</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="resources/img/local/kyeongsang.jpeg" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
            <a href="local/kyeongsang">경상북도&nbsp;<small>GYEONGSANG</small></a>
            </h4>
            <p class="card-text">#경주 #불국사 #동궁과월지
            <br/>#영주 #부석사 #울릉도
             <br/>#안동 #안동하회마을  #포항 #호미곶</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="resources/img/local/kyeongnam.jpg" alt=""></a>
          <div class="card-body">
            <h4 class="card-title">
               <a href="local/kyeongsang">경상남도&nbsp;<small>GYEONGSANG</small></a>
            </h4>
             <p class="card-text">#통영 #통영루지 
            <br/>#창원 #진해 #양산 #통도사
            <br/>#지리산 #영남알프스 #합천해인사
            <br/>#거제도 #바람의언덕
            </p>
          </div>
        </div>
      </div>
    
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="resources/img/local/choongchung.jpeg" alt="" height="230px"></a>
          <div class="card-body">
            <h4 class="card-title">
            <a href="local/choongchung">충청도&nbsp;<small>CHUNGCHEONG</small></a>
            </h4>
            <p class="card-text">#단양도담삼봉 #단양고수동굴 #의림지 
            <br/>#청주동물원 #청주고인쇄박물관
            <br/>#상당산성 #구인사 #법주사 
            <br/>#월악산국립공원
            </p>
          </div>
        </div>
      </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="resources/img/local/junju.jpg" alt="" height="230px"></a>
          <div class="card-body">
            <h4 class="card-title">
               <a href="local/junla">전라북도&nbsp;<small>JEONLA</small></a>
            </h4>
            <p class="card-text">#전라북도여행 #전라도맛집 
            <br/> #전주 #전주한옥마을 #경기전
            <br/>#남원 #춘향테마파크 #내장산
            <br/>#마이산 #임실치즈마을</p>
          </div>
        </div>
      </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="resources/img/local/sooncheon.jpg" alt="" height="230px"></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="local/junla">전라남도&nbsp;<small>JEONLA</small></a>
            </h4>
            <p class="card-text">#전라남도여행 #전라도맛집  
            <br/>#순천 #순천만 #순천만국가정원
            <br/>#보성 #진도바닷길축제 #담양죽녹원
            <br/>#곡성 #여수 #오동도             
            </p>
          </div>
        </div>
      </div>
    </div>
 </div>
    <!-- /.row -->

    <!-- Features Section -->
   <!--  <div class="row">
      <div class="col-lg-6">
        <h2>Modern Business Features</h2>
        <p>The Modern Business template by Start Bootstrap includes:</p>
        <ul>
          <li>
            <strong>Bootstrap v4</strong>
          </li>
          <li>jQuery</li>
          <li>Font Awesome</li>
          <li>Working contact form with validation</li>
          <li>Unstyled page elements for easy customization</li>
        </ul>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>
      </div>
      <div class="col-lg-6">
        <img class="img-fluid rounded" src="http://placehold.it/700x450" alt="">
      </div>
    </div> -->
    <!-- /.row -->

    <hr>

    <!-- Call to Action Section -->
	<!--     
	<div class="row mb-4">
      <div class="col-md-8">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.</p>
      </div>
      <div class="col-md-4">
        <a class="btn btn-lg btn-secondary btn-block" href="#">Call to Action</a>
      </div>
    </div>

  </div> 
   -->
  <!-- /.container -->

 <!-- footer -->
 <%@ include file="common/footer.jsp" %>
    
 
</body>

</html>
