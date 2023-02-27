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
	<link href="${path}/resources/css/updateLog.css" rel="stylesheet"/> 	


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
      <div id = "update_page">
        <div class = "update_log">
          <h1>
            2022.12.30
          </h1>
          <p>
            	업데이트로그 -1 
          </p>
        </div>
        
        <div class = "update_log">
          <h1>
            2023.02.32
          </h1>
          <p>
            	게스트 시트 업데이트 (로그인 없이 시트 사용 가능)
          </p>
        </div>
        
      </div>
		</div>

		

		<div id="footer">
					<p id="copyright">
				Copyright 2023 생임  All rights reserved.
			</p>
		</div>
  </div>


</body>
</html>