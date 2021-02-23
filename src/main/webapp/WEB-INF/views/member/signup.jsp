<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<!--  -->  
<!-- Head -->
<%@ include file="../common/header.jsp"%>

<style>
/* form */
form {
   height: 650px;
   padding: 30px;
}

/* input style */
.input-groups {
   width: 400px;
   margin: 40px auto;
   position: relative; /*기준*/
}

input {
   width: 380px;
   border: none;
   border-bottom: 1px solid #888;
   font-size: 20px;
   /*inline → block으로 바꾸면 글자가 내려옴*/
   display: block;
}

input:focus {
   outline: none;
   border-bottom-width: 4px;
   border-color: #48f;
   transition: 0.5s;
}

label {
   position: absolute; /*label이 input 바로 위에 위치*/
   color: #aaa;
   left: 0;
   top: 0;
   opacity: 0; /*글자 안보이게만 */
   visibility: hidden; /*화면에 안보이게 해줌. 클릭하면 label을 재빨리 위로 올리고 visible로 바꿈*/
   transition: 0.5s; /*3개가 한꺼번에 실행*/
}

.label-top {
   top: -20px;
   opacity: 1;
   visibility: visible;
}

/* button style */
.button {
   margin: 7px 0 0 7px;
   background: #48f;
   color: #fff;
   border: none;
   position: relative;
   height: 40px;
   font-size: 1.2em;
   padding: 0 1em;
   cursor: pointer;
   transition: 800ms ease all;
   outline: none;
}

.button:hover {
   background: #fff;
   color: #48f;
}
</style>


<body>
   <!-- Navigation -->
   <%@ include file="../common/navigation.jsp"%>


   <!-- Page Content -->
   <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">
         회원 가입 &nbsp;<small>Sign Up</small>
      </h1>

      <ol class="breadcrumb">
         <li class="breadcrumb-item"><a
            href="${pageContext.request.contextPath}">Home</a></li>
         <li class="breadcrumb-item active">Sign Up</li>
      </ol>



      <form onsubmit="submitJoinForm(this); return false;"
         action="signUpPost" method="POST">
         <div class="input-groups">
            <label for="mid">ID</label> 
            <input type="text" id="mid" name="mid"
                  placeholder="「아이디 」"  
                  autocomplete="off" autofocus="autofocus" required  />
               <!--   pattern="^([a-z0-9_]){6,12}$" <div class="result">영소문자, 숫자포함 6~12자리</div> -->
                 <div class="result"> </div>
         </div>
         
         <div class="input-groups">
            <label for="mpw">Password</label> 
            <input type="password" id="mpw" name="mpw"
                  placeholder="「비밀번호  」"  required  />
                 <!-- pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$"  
                  <div class="result">영문 대소문자, 숫자, 특수문자 포함 최소 8자리</div> -->
                 <div class="result"> </div>
         </div>
         
         <div class="input-groups">
            <label for="rePw">Confirm Password</label> 
            <input type="password"  id="rePw" 
                    placeholder="「비밀번호 확인」" name="rePw" required />
                    <div class="result"></div>
         </div>
         
         
         <div class="input-groups">
            <label for="mname">Name</label> 
            <input type="text" id="mname"
                  placeholder="「이름」" name="mname" autocomplete="off" required />
                  <div class="result"> </div>
         </div>
         
         
         <div class="input-groups">
            <label for="memail">E-Mail</label> 
            <input type="email" id="memail" name="memail"
                  placeholder="「이메일」"  autocomplete="off" required />
                  <div class="result"> </div>
         </div>
         
         
         <div class="input-groups">
            <input class="button" id="signup" type="submit" value="회원가입" />
            <input class="button" type="button" 
                  onclick="location.href='signin';" value="로그인"/> 
         </div>
      </form>
   </div>
   <!-- /.container -->


   <!-- Bootstrap core JavaScript -->

   <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
   <script>
      $('input').click(function() {
         $(this).attr('placeholder', '');
         $(this).parent().find('label').addClass('label-top');
      });

      var message = '${message}';
       if(message != null && message != '') {
          alert(message);
       }
       
       
       //정규식
       var boolMid = false;
      var boolMpw = false;
      var boolMrepw = false;
      var boolMName = false;
      var boolMemail = false;
      
      var regexId = /^([a-z0-9_]){6,12}$/;
      var regexEmail =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;   // 이메일
      var regexPass = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;       // 특수문자 포함 비밀번호    
      var regexName = /^[\uac00-\ud7a3]{2,6}$/;   
      
      
      function checkRegex(elP,valP,regexP,messageP,ajaxP){ //ajax가 존재하면 확인 없으면 null값을 던져서 확인 안하게
         // 정규식
            if(regexP.test(valP) === false){ 
                // 실패 알려주기
               showMessage(elP,messageP,false);
               return false;
            }else if(regexP.test(valP) !== false && ajaxP === null){
                // 성공 알려주기
               showMessage(elP,"사용가능합니다 :D",true);
                return true;
            }else{
               // 정규식은 통화했지만 ajax 확인
               if(ajaxP !== null){
                  ajaxP(elP); // 어디로 전달했는지 알아야함
               }
            }
         }

      // 메세지를 보여줄 요소, 메세지, 성공 실패 여부
      function showMessage(elP, messageP, isChecked){
         var html = "<span style='margin-left:6px;font-size:15px; ";
         html += isChecked ? "color:green;" : "color:purple;";
         html +="'>";
         html += messageP;
         html += "</span>";
         
         $(elP).html(html);
      }
      
      //아이디검증
   $("#mid").on("input",function(){  //input 사용자가 글을 작성 할 때마다
      var tempVal = $(this).val();
      console.log(tempVal);
      var elP = $(this).next('.result'); // 다음 result!
      var messageP = "영소문자 & 숫자 & (6,12)으로 작성";
      
       boolMid = checkRegex(elP, tempVal, regexId, messageP, null); 
       console.log(boolMid);
   });      
      
   // 비밀번호 검증
   $("#mpw").on("input",function(){
      var tempval = $(this).val();
      var elP = $(this).next(".result");
      var messageP = "영문 & 숫자 & 특수문자(8,16)으로 작성";
      boolMpw = checkRegex(elP,tempval,regexPass,messageP,null);
      
   });
   
   $("#rePw").on("input",function(){
      var tempval = $(this).val();
      var elP = $(this).next(".result");
      var messageP = "비밀번호가 일치하지 않습니다";
      if(boolMpw){
         if(tempval == $("#mpw").val()){
            boolMrepw = true;
            messageP = "비밀번호가 일치합니다 :)";
         }else{
            boolMrepw = false;
         }
      }else{
         boolMrepw = false;
         messageP = "비밀번호를 다시 확인 해주세요 :(";
      }
      showMessage(elP,messageP,boolMrepw);
   });
   
   // 이름 검증
   $("#mname").on("input",function(){
      var tempval = $(this).val();
      var elP = $(this).next(".result");
      var messageP = "한글 2~6자로 작성";
      boolName = checkRegex(elP,tempval,regexName,messageP,null);
   });
      
   // 이메일 검증
   $("#memail").on("input",function(){ 
      var tempVal = $(this).val();
      console.log(tempVal);
      var elP = $(this).next(".result"); 
      var messageP = "올바른 이메일 형식이 아닙니다 :(";
      
      boolMemail = checkRegex(elP, tempVal, regexEmail, messageP, null); 
       console.log(boolMemail);
   });      
      
      
   </script>


   <!-- footer -->
   <%@ include file="../common/footer.jsp"%>



</body>

</html>

