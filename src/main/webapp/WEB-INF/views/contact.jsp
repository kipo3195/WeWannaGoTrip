<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<!-- Head -->
 <%@ include file="common/header.jsp" %>

<body>

   <!-- Navigation -->
   <%@ include file="common/navigation.jsp" %>

  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h2 class="mt-4 mb-3">Detail Location<!-- Contact -->
     &nbsp; 
      <small>오시는 길</small>
    </h2>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="index.html">Home</a>
      </li>
      <li class="breadcrumb-item active">Contact</li>
    </ol>

    <!-- Content Row -->
    <div class="row">
      <!-- Map Column -->
      <div class="col-lg-8 mb-4">
        <!-- Embedded Google Map -->
        <iframe style="width: 100%; height: 400px; border: 0;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3259.963104140598!2d129.06807925053826!3d35.20738798021081!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35689482ba86f91f%3A0xc1516dcbc54352e6!2z7ZWc6rWt6riw7Iig6rWQ7Jyh7KeB7JeF7KCE66y47ZWZ6rWQ!5e0!3m2!1sko!2skr!4v1612197174911!5m2!1sko!2skr"></iframe>
      </div>
      <!-- http://maps.google.com/maps?hl=en&amp;ie=UTF8&amp;ll=37.0625,-95.677068&amp;spn=56.506174,79.013672&amp;t=m&amp;z=4&amp;output=embed -->
      
      <!-- Contact Details Column -->
      <div class="col-lg-4 mb-4">
        <h3 style="color:#0c8e7d;">We Wanna Go Trip</h3>
          <p>
          <br/>
            (47821)<br/>
           부산광역시 동래구 충렬대로 84
            <br>
         </p>
        <p>
          <abbr title="Phone">TEL</abbr>: (051) 714-5709
        </p>
        <p>
          <abbr title="Email">Email</abbr>:
          <a href="mailto:name@example.com">admin123@naver.com
          </a>
        </p>
        <p>
          <abbr title="Hours">Office Hour</abbr>: 월요일 - 금요일 
          <br/> 9:00 AM -  5:00 PM
        </p>
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
   <%@ include file="common/footer.jsp" %>

   <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Contact form JavaScript -->
  <!-- Do not edit these files! In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
  <script src="${pageContext.request.contextPath}/resources/js/jqBootstrapValidation.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/contact_me.js"></script>

</body>

</html>
