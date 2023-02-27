<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
	<link href="${path}/resources/css/style.css" rel="stylesheet"/> 	
	<link href="${path}/resources/css/login.css" rel="stylesheet"/> 	
	

	<style>
		body{
			font-family: 'Nana';
		}
		</style>

</head>

<body>

	<div id="container">
		<div id="header">
			<a href="/index">COC 캐릭터 시트</a>
			<a href="/index">팀구성</a>
			<a href="/guestSheet">시트작성</a>
      <a href="/guide">가이드</a>
      <a href="/updateLog">업데이트</a>
      <div class="blank"></div>
      <a href="/login" class="login"> 로그인</a>
		</div>
		<div id="main">
		<form>
		
			<div id="login">
        		<p id="ID">아이디</p><input type="text" name="id" class="login_input" value="${id}"/>
        		<p id="PW">비밀번호</p><input type="text" name="pw" class="login_input" value="${pw}">
        		<input id="btn_login" type="submit" value="로그인">
        		<a href="/signUp" id="signUP">회원가입</a>        		
      		</div>
      	</form>
      		
		</div>

		

		<div id="footer">
					<p id="copyright">
				Copyright 2023 생임  All rights reserved.
			</p>
		</div>
  </div>


</body>
</html>