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
			<a href="/login">팀구성</a>
			<a href="/guestSheet">시트작성</a>
      <a href="/guide">가이드</a>
      <a href="/updateLog">업데이트</a>
      <div class="blank"></div>
      <a href="/login" class="login"> 로그인</a>
		</div>

		<div id="main">
			<div>
				<figure>
					<img src="${path}/resources/picture/picture.jpg" alt="건터" id="pic">

				</figure>
			</div>


			<div class="row">
				<div class ="row-header">
					<h1>주요기능</h1>
				</div>

				<div class = "feature-list">
					<a href = "/login">
						<h2>팀구성</h2>
						<p>팀을 구성하여 팀단위의 시트를 작성할 수 있습니다.</p>
					</a>
					<a href = "/guestSheet">
						<h2>시트작성</h2>
						<p>로그인 없이 개인시트 또한 작성 가능합니다.</p>
					</a>
				</div>
			</div>

			<div class="row">
				<div class ="row-header">
					<h1>커뮤니티</h1>
				</div>

				<div class = "feature-list">
					<a href = "https://github.com/toddla23/COC_poject_in_web" target="_blank">
						<h2>GUTHUB</h2>
						<p>이 페이지의 오픈소스입니다.</p>
						
					</a>
					<a href = "https://discord.gg/fT54qD74YM" target="_blank">
						<h2>DISCORD</h2>
						<p>오류 문의 및 버그 신고 알림 체널 입니다.</p>
						
					</a>
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