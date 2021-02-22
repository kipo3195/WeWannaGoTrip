<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

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

.input {
	width: 380px;
	border: none;
	border-bottom: 1px solid #888;
	font-size: 20px;
	/*inline → block으로 바꾸면 글자가 내려옴*/
	display: block;
}

.input:focus {
	outline: none;
	border-bottom-width: 4px;
	border-color: #48f;
	transition: 0.5s;
}

.label {
	position: absolute;
	color: #aaa;
	left: 0;
	top: 0;
	opacity: 0;
	visibility: hidden;
	transition: 0.5s;
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

input[type=checkbox] {
	-ms-transform: scale(1.5);
	-moz-transform: scale(1.5);
	-webkit-transform: scale(1.5);
	-o-transform: scale(1.5);
	margin: 7px;
}

.find {
	margin: 7px 0 0 7px;
	background: #ababab;
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

.find:hover {
	background: #fff;
	color: #ababab;
}

/*모달*/
.close {
	width: 100%;
	color: black;
	background-color: white;
	line-height: 50px;
	font-weight: bold;
}
.close:hover{
	cursor:pointer;
}
.textWrap {
	padding: 15px;
	height: 120px;
	line-height: 120px;
}
.contentWrap {
	border: 1px solid white;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
	position: absolute;
	width: 410px;
	height: 200px;
	top: 50%;
	left: 50%;
	margin-top: -100px;
	margin-left: -205px;
	color: white;
}
.alertDiv {
	display: none;
	position: absolute;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.8);
	top: 0;
	left: 0;
	text-align: center;
}
</style>


<body>
	<!-- Navigation -->
	<%@ include file="../common/navigation.jsp"%>


	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			로그인 &nbsp;<small>Sign In</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}">Home</a></li>
			<li class="breadcrumb-item active">Sign In</li>
		</ol>



		<form onsubmit="submitLoginForm(this); return false;"
			action="signInPost" method="POST">
			<div class="input-groups">
				<label class="label" for="mid">ID</label> 
				<input type="text" class="input" autocomplete="off"
				       placeholder="「아이디」" name="mid" autofocus="autofocus"
					   required />
			</div>
			<div class="input-groups">
				<label class="label" for="mpw">Password</label> 
				<input type="password" class="input" autocomplete="off"
				       placeholder="「비밀번호」" name="mpw"
					    required />
			</div>
			<div class="input-groups">
				<label> 
					<input type="checkbox" name="memberCookie" /> 
					<span style="font-size: 17px;">로그인 정보 저장</span>
				</label>
			</div>
			<div class="input-groups">
				<input style="width: 400px; margin: auto; 
				       position: relative; margin: 5px;"
					   class="button" type="submit" value="로그인" /> 
				<input style="width: 400px; margin: auto; 
				       position: relative; margin: 5px;"
					   class="find" type="button" value="비밀번호 찾기" />
			</div>
		</form>
		
		<div class="alertDiv">
		<div class="contentWrap">
			<div class="textWrap">
				<span id="message"></span><br /> <span id="time"></span>
			</div>
			<div id="closeBtn" class="close">닫기</div>
		</div>
	</div>
		
	</div>
	<!-- /.container -->


	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script>
		$('input').click(function() {
			$(this).attr('placeholder', '');
			$(this).parent().find('label').addClass('label-top');
		});

		var message = '${message}';
		var time = '${time}';
		var interval;
		var alertDiv = document.getElementsByClassName("alertDiv")[0];
	 	if(message != null && message != '') {
	 		console.log(message + " : " + time);
			alertDiv.style.display = "block";
			document.getElementById("message").innerHTML = message;
			if(time != null && time != ''){
				document.getElementsByClassName("textWrap")[0].style.lineHeight = "60px";
				time = Number(time);
				interval = setInterval(getTime,1000);
			}
	 	}	
			document.getElementById("closeBtn").onclick = stop;
			function stop(){
				clearInterval(interval);
				alertDiv.style.display = "none";
			}
			
			function getTime(){
				time -= 1000;
				
				if(time < 0) stop();
				
				var date = new Date(time);
				var min = date.getMinutes();
				var second = date.getSeconds();
				
				min = 10 > min ? "0"+min : min;
				second = 10 > second ? "0"+second : second;
				var timeStr = min+":"+second;
				console.log(timeStr);
				document.getElementById("time").innerHTML = "남은시간 -"+timeStr;
			}
	</script>


	<!-- footer -->
	<%@ include file="../common/footer.jsp"%>


</body>

</html>
