<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 수정</title>
</head>
<body>
	<h1>게시물 수정</h1>
  	
   <form action="doModify" method="POST">
   		<input  type="hidden" name="id" value="${article.id}"/>
   		<!-- input만 값이 날라가기때문에 type="text"    readonly="readonly" -->
   		<div> 
   			번호 : ${article.id}
   		</div>
   		<div> 
   			작성 날짜 : ${article.regDate}
   		</div>
   		<div> 
   			수정 날짜 : ${article.updateDate}
   		</div>
   		<div> 
   			제목 : <input type="text" maxlength="30" placeholder="제목을 입력해주세요." 
   								name="title" value="${article.title}"/>
   		</div>
   		<div>
         	내용 : <input type="text" maxlength="30" placeholder="내용을 입력해주세요." 
         					  name="body" value="${article.body}"/>
   		</div>
   		<div>
   			수정완료 : <input type="submit" value="수정"/>
   		</div>
   </form>
</body>
</html>