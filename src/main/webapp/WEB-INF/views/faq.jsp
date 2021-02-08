<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<!-- Head -->
 <%@ include file="common/header.jsp" %>


<style>
	input[id*="answer"]{
		display:none;
	}
	input[id*="answer"] + label {
		display : block;
		padding : 20px;
		border : 1px solid 	#87CEEB;
		border-bottom : 0;
		color : #fff;
		font-size : 23px;
		font-weight:900;
		background : 	#87CEEB;
		cursor:pointer;

		position : relative;
	}
	input[id*="answer"] + label em {
		position : absolute;
		top : 50%;
		right : 10px;
		width : 30px;
		height : 30px;
		margin-top : -15px;
		display-top : inline-block;
		background:url('resources/img/arrow.png') 0 0 no-repeat;

	}
	input[id*="answer"] + label + div {
		max-height:0;
		height:auto;
		transition : all .35s;
		overflow : hidden;
		background:#ebf8f;
		font-size : 16px;

	}
	input[id*="answer"] + label + div p {
		display : inline-block;
		padding: 14px;
	}
	input[id*="answer"]:checked + label + div {
		max-height:360px;
	}
	input[id*="answer"]:checked + label em {
		background-position : 0 -30px;
	}
</style>




<body>

  <!-- Navigation -->
  <%@ include file="common/navigation.jsp" %>
   
  <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">FAQ
      &nbsp;  <small>자주묻는질문</small>
    </h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="${pageContext.request.contextPath}">Home</a>
      </li>
      <li class="breadcrumb-item active">FAQ</li>
    </ol>

    
	<div class="accordion" style="height:800px;">
	
	   <input type="radio" name="accordion" id="answer01">
       <label for="answer01">WeWannaGoTrip은 다른 여행사들이 안 가는 곳만 가나요?<em></em></label>
       <div>
       <p>
        We Wanna Go Tip의 여행은 두 가지 접근법을 가지고 여행을 기획하고 판매하고 있습니다.
		<br/>
		첫 번째는 남들이 가지 않거나 가기 어려운 숨겨진 여행지들을 찾아가는 것.<br/>
		두 번째는 대중적인 여행지이지만 다른 방식으로 여행을 하는 것입니다.<br/>
		<br/>
		사람이 많은 곳을 피해가는 것만이 공정 여행이라고 생각하는 고정관념에서 벗어나<br/>
		새로운 방식으로 재미도 찾고, 의미도 찾을 수 있는 여행을 하는 것입니다.<br/>
		<br/>
		현지 문화를 바른 시선으로 바라보고, 환경에 미치는 영향을 최소화하는 개인적 실천을<br/>
		여행 안에서 하고 있습니다.<br/>
		<br/>
		이러한 지속 가능한 여행의 방식을 통해 <br/>
		많은 사람들이 즐거워하고 장기적인 관점에서는 지역 경제에 도움이 되는 여행을 위해 <br/>
    	노력하겠습니다.
       </p></div>
       
       <input type="radio" name="accordion" id="answer02">
       <label for="answer02">예약금 지불 후 잔액은 언제까지 내야하나요?<em></em></label>
       <div>
       <p>예약금은 여행계약서에 별도 안내 드리며 여행 계약 체결 후, 3일 이내에 무통장 입금을 해주시면 됩니다.<br/>
		    예약금 결제 후 잔금은 현금 또는 신용카드로 결제하실 수 있습니다.<br/>
                     국외 여행의 경우, 여행 출발 4주 전 결제를 원칙으로 하며<br/>
                     중도금이 있거나 특별 약관이 적용되는 등 여행 지역과 상품 형태에 따라 상이할 수도 있습니다.<br/>
                     이 경우 예약 후 발송되는 여행 계약서에서 확인이 가능합니다.</p> </div>
       <input type="radio" name="accordion" id="answer03">
       <label for="answer03">취소수수료 규정은 어떻게 되나요?<em></em></label>
       <div>
         <p>취소수수료는 여행약관 기준에 따라 부과됩니다.<br/>
          (단, 국외여행표준약관 5조 '특별약관’에 의해 특별취소규정이 적용되는 여행상품은 취소수수료가 다르게 부과될 수 있습니다.<br/> 
                    계약서에 기재되는 각 상품별 특약을 확인해주세요.)
         </p> </div>
       
       <input type="radio" name="accordion" id="answer04">
       <label for="answer04">결제수단에는 어떤 것들이 있나요?<em></em></label>
       <div><p>예약금은 현금으로 가능하며 잔금은 현금, 신용카드 모두 가능합니다.<br/>
		<br/>
		단, 무통장 입금의 경우 입금자명과 예약자명이 동일해야 확인이 가능합니다.<br/>
		예약자명과 입금자명이 다를 경우 담당자에게 연락해주시면 확인이 가능합니다<br/>
		<br/>
		*신용카드 결제시 주의사항<br/>
		반드시 실여행자와 카드 소유자가 일치할 때 사용하실 수 있습니다.<br/>
		주민등록번호와 카드비밀번호는 신용카드 도난방지를 위해 본인인증절차 후 사용하실 수 있습니다.<br/>
		</p> </div>
        <input type="radio" name="accordion"id="answer05">
       <label for="answer05">여행상품 변경이나 취소는 어떻게 해야하나요?<em></em></label>
       <div><p>여행상품 변경은 상품 담당자를 통하여 변경 가능합니다. <br/>
		전화문의 주시거나, 담당자의 이메일 또는 홈페이지 마이페이지에 글을 남겨주세요.<br/>
		</p> </div>
</div>

  </div>
  <!-- /.container -->

   <!-- Footer -->
   <%@ include file="common/footer.jsp" %>

   <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>

