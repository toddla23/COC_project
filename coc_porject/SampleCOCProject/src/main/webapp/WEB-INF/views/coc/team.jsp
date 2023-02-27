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
  	<link href="${path}/resources/css/team.css" rel="stylesheet"/>
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
	      <div id="team">
	      		<p id="asd">
		          	팀 페이지
		        </p>
	      
			      	<a style="color:black" href="/sheetList?team_id=${data.team_id1 }&id=${data.id }" class="team_link">팀 번호 : ${data.team_id1 }</a>
			      	<a style="color:black" href="/sheetList?team_id=${data.team_id2 }&id=${data.id }" class="team_link">팀 번호 : ${data.team_id2 }</a>
			      	<a style="color:black" href="/sheetList?team_id=${data.team_id3 }&id=${data.id }" class="team_link">팀 번호 : ${data.team_id3 }</a>
			      	<a style="color:black" href="/sheetList?team_id=${data.team_id4 }&id=${data.id }" class="team_link">팀 번호 : ${data.team_id4 }</a>
			      	<a style="color:black" href="/sheetList?team_id=${data.team_id5 }&id=${data.id }" class="team_link">팀 번호 : ${data.team_id5 }</a>
		
	      
		      <form method="POST">
		      	<input type="submit" class="butten_sets" value="생성">	
		      </form>


				<form method="POST" action="/add" id="team_chage">
					<input type="hidden" name="id" value="${data.id}" />
					<p class="input_name">
						삭제할 팀 번호:
				   		<input type="text" name="target"  class="team_input" value="0"/>
				   	</p>
				   	<p class="input_name">
				   		추가할 팀 번호:
				   		<input type="text" name="team_id" class="team_input"/>
				   	</p>
				   	<p>
				   		<input type="submit" class="butten_sets" value="추가">
				   	</p>
				</form>
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