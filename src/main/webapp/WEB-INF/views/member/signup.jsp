<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

 <!-- Head -->
 <%@ include file="../common/header.jsp" %>
 
   <style>
    /* input style */	
	.input-groups {
				width : 400px;
				margin: 40px auto;
				position : relative; /*기준*/
    }
     input{
         width : 380px;
         border:none;
         border-bottom:1px solid #888;
         font-size : 20px;
           /*inline → block으로 바꾸면 글자가 내려옴*/
         display : block;
    }
     input:focus{
     	 outline : none;
     	 border-bottom-width:4px;
     	 border-color:#48f;
     	 transition : 0.5s;
    }
    label{
     	 position : absolute; /*label이 input 바로 위에 위치*/
     	 color : #aaa;
     	 left : 0;
     	 top: 0;
     	 opacity: 0;  /*글자 안보이게만 */
     	 visibility:hidden; /*화면에 안보이게 해줌. 클릭하면 label을 재빨리 위로 올리고 visible로 바꿈*/
     	 transition:0.5s; /*3개가 한꺼번에 실행*/
   }
     .label-top{
     	top:-20px;
     	opacity: 1;
     	visibility : visible;
      }
     
    /* button style */
   .button{
  		margin : 7px 0 0 7px;
  		background:#48f;
  		color:#fff;
  		border:none;
  		position:relative;
  		height:40px;
  		font-size:1.2em;
  		padding:0 1em;
  		cursor:pointer;
  		transition:800ms ease all;
  		outline:none;
	}
   .button:hover{
  		background:#fff;
  		color:#48f;
    } 


</style>
 
 
<body>
  <!-- Navigation -->
  <%@ include file="../common/navigation.jsp" %>
     
 
  <!-- Page Content -->
  <div class="container">

   <!-- Page Heading/Breadcrumbs -->
   <h1 class="mt-4 mb-3">회원 가입
     &nbsp;<small>Sign Up</small>
   </h1>

   <ol class="breadcrumb">
     <li class="breadcrumb-item">
       <a href="${pageContext.request.contextPath}">Home</a></li>
     <li class="breadcrumb-item active">Sign Up</li>
   </ol>



   <form onsubmit="submitJoinForm(this); return false;"
  			action="signUpPost" method="POST"  
  			style="height:650px; padding:30px;">
 	<div class="input-groups" >
 		<label for="mid" >ID</label>
 		<input type="text" id="mid" placeholder="「아이디」" name="mid"
  		         autofocus="autofocus" required/>
 	</div>
 	<div class="input-groups" >
 		<label for="mpw">Password</label>
 		<input type="password" id="mpw" placeholder="「비밀번호」"
 		       name="mpw" required/>
 	</div>
 	<div class="input-groups" >
 		<label for="rePw">Confirm Password</label>
 		<input type="password" id="rePw" placeholder="「비밀번호 확인」" 
 		       name="repw" required/>
 	</div>
 	<div class="input-groups" >
 		<label for="mname">Name</label>
 		<input type="text" id="mname" placeholder="「이름」" name="mname" required/>
 	</div>
 	<div class="input-groups" >
 		<label for="email">E-Mail</label>
 		<input type="email" id="email" placeholder="「이메일」" name="memail" required/>
 	</div>
 	<div class="input-groups">
 		<input class="button" type="submit" value="Sign Up"/>
  		<!-- <input class="button" onclick="history.back();" type="button" value="Back"/> -->
 	</div>
 </form>
 </div>
 <!-- /.container -->
 
 
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>

     $('input').click(function(){
	      $(this).attr('placeholder',''); 
	      $(this).parent().find('label').addClass('label-top');
     });
	
 	var message = '${message}';
 	if(message != null && message != '') {
 		alert(message);
 	}
     
</script>
 

 <!-- footer -->
 <%@ include file="../common/footer.jsp" %>



</body>

</html>
