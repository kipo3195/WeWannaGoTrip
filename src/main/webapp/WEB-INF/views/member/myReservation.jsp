<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html>
<html>
<!-- Head -->
 <%@ include file="../common/header.jsp" %>


<style>
	.selected{
		color : red;
	}
</style>


<body>

  <!-- Navigation -->
  <%@ include file="../common/navigation.jsp" %>
   
   <!-- Page Content -->
  <div class="container">

	 <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">내 예약 확인하기
      &nbsp;  <small></small>
    </h1>

    <div class="accordion">
	<c:choose>
		<c:when test="${!empty list}">
			<c:forEach items="${list}" var="list">
				<div>
			  	예약번호 :  H${list.rnumber}
		  		<br/> 
		  		호텔이름 :   ${list.hname}
		  		<br/>
		  		 등급 :    ${list.grade} 
		  		<br/>
		  		 일정 :   
		  		 <f:formatDate value="${list.rdate}" type="date"/>
		  		<br/>
		  		 예약 일시 :
		  		  <f:formatDate value="${list.resregdate}" type="date"/>
		  		<br/>
					<div>
				  		<a  onclick="if ( confirm('취소하시겠습니까?') == false ) return false;" href="${pageContext.request.contextPath}/member/cancelHotel?rnumber=${list.rnumber}"> 예약취소하기 </a> 
				  	</div>	
		  	</div>
		  	<hr/>
			</c:forEach>	
		</c:when>
		<c:otherwise>
			예약 정보가 존재하지 않습니다.
		</c:otherwise>
	</c:choose>
  
  	
 <!-- Pagination -->
<%--     <ul class="pagination justify-content-center">
    
     <!-- 처음 페이지로 이동버튼이 노출 될 필요가 있는지 여부 -->
  	 <c:set var="goFirstBtnNeedToShow" 
  	 		value="${page > pageMenuArmSize + 1}"/>
  	 
  	 <!-- 마지막 페이지로 이동버튼이 노출될 필요가 있는지 여부 --> 
  	 <c:set var="goLastBtnNeedToShow" value="true"/> <!-- 가장마지막페이지 true 보여줌 -->
    
    <c:if test="${goFirstBtnNeedToShow}">
      <li class="page-item">
        <a class="page-link" href="?page=1" aria-label="Previous">
          <span aria-hidden="true">&laquo;</span>
        </a>
      </li>
     </c:if>
    
      <c:forEach var="i" begin="${pageMenuStart}" end="${pageMenuEnd}">
      	<li class="page-item">
      		<c:set var="className" value="${i == page ? 'selected' : ''}" />
        	<a class="page-link ${className}"  href="?page=${i}">${ i }</a>
        	
        	<!-- 방금 노출된 페이지 번호가 마지막 페이지의 번호였다면, 마지막으로 이동하는 버튼이 노출되지않는다 -->
  			<c:if test="${i == totalPage}"> 	
  				<c:set var="goLastBtnNeedToShow" value="false"/>
  			</c:if>
      	</li>
      </c:forEach>	 --%>
      
      
     <!-- 마지막페이지로 이동버튼이 노출될 필요가 있다면 노출 -->
  	<c:if test="${goLastBtnNeedToShow}">
      <li class="page-item">
        <a class="page-link" href="?page=${totalPage}" aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
         </a>
      </li>
     </c:if>
    </ul>
  	
  	 </div>
  	  </div>
  	  <!-- /.container -->

   <!-- Footer -->
   <%@ include file="../common/footer.jsp" %>

   <!-- Bootstrap core JavaScript -->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	<script>
		var message ="${message}";
		if(message=="fail"){
			alert("최소 3일 이전의 예약만 취소 가능합니다");
		}else if(message == "success"){
			alert("예약이 취소 되었습니다.");
		}
	</script>
</body>
</html>