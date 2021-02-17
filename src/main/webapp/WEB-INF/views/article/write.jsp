<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성</title>
</head>
<body>
	<h1>게시물 작성</h1>
  		<!-- action  : URL의 물음표 전의 내용
  			              /article/Write 에서 /article/doWrite로 이동	 -->
   <form action="doWrite"  method="POST">
   		<div> <!-- name값 중요 -->
   			제목 : <input type="text" maxlength="30" placeholder="제목을 입력해주세요." 
   								name="title"/>
   		</div>
   		<div>
         	내용 : <input type="text" maxlength="30" placeholder="내용을 입력해주세요." 
         					  name="body"/>
   		</div>
   		<div>
   			제출 : <input type="submit" value="작성"/>
   		</div>
   </form>
   <div>
   		<a href="list">리스트</a>
   </div>
</body>
</html>