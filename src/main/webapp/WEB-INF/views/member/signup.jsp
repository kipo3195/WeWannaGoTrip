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
	
	padding: 28px;
}

/* input style */
.input-groups {
	text-align : center;
	width: 400px;
	margin: 20px auto;
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

.label {
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

input[type=checkbox] {
	-ms-transform: scale(1.5);
	-moz-transform: scale(1.5);
	-webkit-transform: scale(1.5);
	-o-transform: scale(1.5);

}

/*table*/
table{
	max-width:600px;
	margin: 0 auto;
}
table td {
	text-align:center;
	margin : auto;
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
	<table>
		<tr>
			<td>
			<div class="input-groups">
				<label for="mid" class="label">ID</label> 
				<input type="text" id="mid" name="mid"
					   placeholder="「아이디」" autocomplete="off" autofocus="autofocus"  />
			</div>
			<div class="result"></div>	
			</td>
		</tr>
		<tr>
			<td>
			<div class="input-groups">
				<label for="mpw" class="label">Password</label> 
				<input type="password" id="mpw" name="mpw"
					   placeholder="「비밀번호」"  autocomplete="off" />
			</div>
			<div class="result"></div>
			</td>
			<td>
			<div class="input-groups">
				<label for="rePw" class="label">Confirm Password</label> 
				<input type="password"  id="rePw" name="repw"
				        placeholder="「비밀번호 확인」" />
			</div>
			<div class="result"></div>
			</td>
		</tr>
		<tr>
			<td>
			<div class="input-groups">
				<label for="mname" class="label">Name</label> 
				<input type="text" id="mname" name="mname"
					   placeholder="「이름」" autocomplete="off" />
			</div>
			<div class="result"></div>
			</td>
		</tr>
		<tr>
			<td>
			<div class="input-groups">
				<label for="mbirth" class="label">Birthday</label> 
				<input type="text"  id="mbirth" name="mbirth"
				        placeholder="「생년월일」" />
			</div>
			<div class="result"></div>
			</td>
		</tr>	
		<tr>	
			<td>
			<div class="input-groups">
				<label for="mphone" class="label">Phone</label> 
				<input type="text" id="mphone" name="mphone"
					   placeholder="「핸드폰」" autocomplete="off" />
			</div>
			<div class="result"></div> <br/><br/><br/>	
			</td>
		</tr>	
		<tr>
			<td colspan=2>
				<h4>개인정보 이용 동의</h4>
				<textarea readonly cols=100 rows=5>㈜We Wanna Go Trip(이하 ‘회사’)는 고객의 개인정보보호와 정보주체자의 권익보장을 위해 최선의 노력을 다하고 있습니다.
회사는 『개인정보보호법』 관련조항과 『정보통신망 이용촉진 및 정보보호에 관한 법률』의 기준에 따라 ‘개인정보처리방침’을 수립하여 이를 준수하고 있습니다. 
고객의 개인정보가 어떠한 목적과 절차로 수집, 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 다음과 같이 알려드립니다.   본 개인정보처리방침을 개정하는 경우에는 회사 웹사이트를 통하여 사전에 고지하겠습니다.</textarea>
	       </td>
			
		</tr>
		<tr>
			<td colspan="2">
			   <label>	
				<input type="checkbox" name="minfo" id="minfo" value="Y"/>
				개인정보  동의
			    </label>
			</td>
		</tr>
		<tr>
			<td colspan="2">
			<div class="input-groups">
				<input class="button" type="submit" value="회원가입" />
				<input class="button" type="button" 
					   onclick="location.href='signin';" value="로그인"/> 
			</div>
			</td>
		</tr>
	</table>
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
	</script>


	<!-- footer -->
	<%@ include file="../common/footer.jsp"%>

</body>

</html>

