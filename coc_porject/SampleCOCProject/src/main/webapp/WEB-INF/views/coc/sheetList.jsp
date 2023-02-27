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
  	<link href="${path}/resources/css/sheetList.css" rel="stylesheet"/>
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
			<a href="/index">팀구성</a>
			<a href="/sheet">시트작성</a>
      <a href="/guide">가이드</a>
      <a href="/updateLog">업데이트</a>
      <div class="blank"></div>
      <a href="/login" class="login"> 로그아웃</a>
		</div>

		<div id="main">
	      <div id="sheet_list">
			<h1>${data.team_id }번 시트 목록</h1>  
			<a style="color:black" href="/update?userId=${data.sheet_id1 }&team_id=${data.team_id }">COC 캐릭터 시트 : ${data.sheet_id1 }</a>
			<a style="color:black" href="/update?userId=${data.sheet_id2 }&team_id=${data.team_id }">COC 캐릭터 시트 : ${data.sheet_id2 }</a>
			<a style="color:black" href="/update?userId=${data.sheet_id3 }&team_id=${data.team_id }">COC 캐릭터 시트 : ${data.sheet_id3 }</a>
			<a style="color:black" href="/update?userId=${data.sheet_id4 }&team_id=${data.team_id }">COC 캐릭터 시트 : ${data.sheet_id4 }</a>
			<a style="color:black" href="/update?userId=${data.sheet_id5 }&team_id=${data.team_id }">COC 캐릭터 시트 : ${data.sheet_id5 }</a>
		
			<p>  
				<a style="color:black" href="/sheet?team_id=${data.team_id}" id="create_sheet">생성</a>  
			</p> 
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