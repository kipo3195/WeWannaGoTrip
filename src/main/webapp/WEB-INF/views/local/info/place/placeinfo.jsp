<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    <h2 class="mt-4 mb-3">Nature & Park<!-- Contact -->
     &nbsp; 
      <small>관광지</small>
    </h2>
<!-- 
    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="index.html">Home</a>
      </li>
      <li class="breadcrumb-item active">Contact</li>
    </ol> -->

    <!-- Content Row -->
    <div class="row">
      <!-- Map Column -->
      <div class="col-lg-8 mb-4">
        <!-- Embedded Google Map -->
    
     <iframe style="width: 100%; height: 400px; border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3336.826363110295!2d126.56960915007946!3d33.24485208073906!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350c5373f9c8a7f1%3A0xa0f04e20cf99b30b!2z7KCV67Cp7Y-t7Y-s!5e0!3m2!1sko!2skr!4v1612765707858!5m2!1sko!2skr" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
     
      </div>
      <!-- http://maps.google.com/maps?hl=en&amp;ie=UTF8&amp;ll=37.0625,-95.677068&amp;spn=56.506174,79.013672&amp;t=m&amp;z=4&amp;output=embed -->
      
      <!-- Contact Details Column -->
      <div class="col-lg-4 mb-4">
        <h3 style="color:#0c8e7d;">정방폭포</h3>
          <p>
          <br/>
정방폭포는 천제연폭포, 천지연폭포와 더불어 제주도 3대 폭포라고 불린다. 높이 23m, 너비 8m에 깊이 5m에 달하며,
국내에선 유일한 뭍에서 바다로 직접 떨어지는 폭포다. 입구의 매표소에서 표를 구매하고 소나무가 있는 계단을 따라 5분 정도 내려오면, 햇빛이 비쳐 은하수 빛깔로 변하는 정방폭포를 볼 수 있다.
            <br/><br/> 
                      요금정보 : 유료,
           <br/>어른 2.000원 / 청소년 1.000원 / 장애인 경로인  무료
                       
         </p>
        <p>
          <abbr title="Phone">TEL</abbr>: +82 64-733-1530
        </p>
        <!-- <p>
          <abbr title="Email">요금정보</abbr>
          <a href="mailto:name@example.com">
          </a>
        </p> -->
        <p>
          <abbr title="Hours">이용시간</abbr><br/> 평일 : 09:00 ~ 18:00 , 
          <br/> 주말 : 09:00 ~ 18:00 
        </p>
      </div>
    </div>
    
      <!-- Related Projects Row -->
    <h3 class="my-4">Related Projects</h3>

    <div class="row">

      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
          <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/jejuinfo/jungbang.jpg" alt="">
        </a>
      </div>

      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
         <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/jejuinfo/jungbang.jpg" alt="">
        </a>
      </div>

      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
          <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/jejuinfo/jungbang.jpg" alt="">
        </a>
      </div>

      <div class="col-md-3 col-sm-6 mb-4">
        <a href="#">
         <img class="img-fluid" src="${pageContext.request.contextPath}/resources/img/jejuinfo/jungbang.jpg" alt="">
        </a>
      </div>

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
    <!-- /.row -->

    <!-- Contact Form -->
    <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
   <!--  <div class="row">
      <div class="col-lg-8 mb-4">
        <h3>Send us a Message</h3>
        <form name="sentMessage" id="contactForm" novalidate>
          <div class="control-group form-group">
            <div class="controls">
              <label>Full Name:</label>
              <input type="text" class="form-control" id="name" required data-validation-required-message="Please enter your name.">
              <p class="help-block"></p>
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Phone Number:</label>
              <input type="tel" class="form-control" id="phone" required data-validation-required-message="Please enter your phone number.">
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Email Address:</label>
              <input type="email" class="form-control" id="email" required data-validation-required-message="Please enter your email address.">
            </div>
          </div>
          <div class="control-group form-group">
            <div class="controls">
              <label>Message:</label>
              <textarea rows="10" cols="100" class="form-control" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
            </div>
          </div>
          <div id="success"></div>
          For success/fail messages
          <button type="submit" class="btn btn-primary" id="sendMessageButton">Send Message</button>
        </form>
      </div>

    </div> -->
    <!-- /.row -->

  </div>
  <!-- /.container -->

   <!-- Footer -->
   <%@ include file="../../../common/footer.jsp" %>

   <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Contact form JavaScript -->
  <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
  <script src="${pageContext.request.contextPath}/resources/js/jqBootstrapValidation.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/contact_me.js"></script>

</body>

</html>
