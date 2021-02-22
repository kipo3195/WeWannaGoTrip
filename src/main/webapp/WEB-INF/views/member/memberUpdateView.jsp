<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<!-- Head -->
<%@ include file="../common/header.jsp"%>


<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css"> -->
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<body>
	<!-- Navigation -->
	<%@ include file="../common/navigation.jsp"%>


	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<h1 class="mt-4 mb-3">
			회원정보수정 &nbsp;<small>Update</small>
		</h1>

		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a
				href="${pageContext.request.contextPath}">Home</a></li>
			<li class="breadcrumb-item active">회원정보수정</li>
		</ol>


		<script type="text/javascript">
			$(document).ready(function() {
				// 취소
				$(".cancle").on("click", function() {

					location.href = "${pageContext.request.contextPath}";
				})

				$("#submit").on("click", function() {
					if ($("#mpw").val() == "") {
						alert("비밀번호를 입력해주세요.");
						$("#mpw").focus();
						return false;
					}
					if ($("#mname").val() == "") {
						alert("성명을 입력해주세요.");
						$("#mname").focus();
						return false;
					}
					if ($("#memail").val() == "") {
						alert("이메일을 입력해주세요.");
						$("#memail").focus();
						return false;
					}
				});
			})
		</script>
		<section id="container">
			<form action="${pageContext.request.contextPath}/member/memberUpdate"
				method="post">
				<div class="form-group has-feedback">
					<label class="control-label" for="mid">아이디</label> <input
						class="form-control" type="text" id="mid" name="mid"
						value="${memberInfo.mid}" readonly="readonly" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="mpw">패스워드</label> <input
						class="form-control" type="password" id="mpw" name="mpw" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="mname">성명</label> <input
						class="form-control" type="text" id="mname" name="mname"
						value="${memberInfo.mname}" />
				</div>
				<div class="form-group has-feedback">
					<label class="control-label" for="memail">이메일</label> <input
						class="form-control" type="text" id="memail" name="memail"
						value="${memberInfo.memail}" />
				</div>
				<div class="form-group has-feedback">
					<button class="btn btn-success" type="submit" id="submit">회원정보수정</button>
					<button class="cancle btn btn-danger" type="button">취소</button>
				</div>
			</form>
		</section>

	</div>
</body>

</html>